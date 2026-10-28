import 'dart:convert';
import 'dart:io';

import '../core/sgp4.dart';

/// Orbit data (TLE) of the International Space Station.
class IssTle {
  const IssTle({
    required this.name,
    required this.line1,
    required this.line2,
    required this.fetchedAtMs,
  });

  final String name;
  final String line1;
  final String line2;

  /// When the phone downloaded it.
  final int fetchedAtMs;

  /// The orbit ready to use, or null when the lines are not a valid TLE.
  Sgp4? toSgp4() {
    try {
      return Sgp4.fromTle(line1, line2);
    } on FormatException {
      return null;
    }
  }

  Map<String, Object> toJson() => <String, Object>{
        'name': name,
        'line1': line1,
        'line2': line2,
        'fetchedAtMs': fetchedAtMs,
      };

  static IssTle? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }
    final name = json['name'];
    final l1 = json['line1'];
    final l2 = json['line2'];
    final at = json['fetchedAtMs'];
    if (name is String && l1 is String && l2 is String && at is int) {
      return IssTle(name: name, line1: l1, line2: l2, fetchedAtMs: at);
    }
    return null;
  }
}

/// One upcoming rocket launch from Launch Library 2.
class Launch {
  const Launch({
    required this.id,
    required this.name,
    required this.netMs,
    required this.timeKnown,
    this.status = '',
    this.provider = '',
    this.rocket = '',
    this.pad = '',
    this.location = '',
  });

  final String id;
  final String name;

  /// Planned liftoff ("NET", no earlier than), milliseconds since 1970 UTC.
  final int netMs;

  /// False when only the day (or less) is known.
  final bool timeKnown;
  final String status;
  final String provider;
  final String rocket;
  final String pad;
  final String location;

  /// The id used for this launch's reminder.
  String get reminderId => 'launch:$id';

  DateTime get net => DateTime.fromMillisecondsSinceEpoch(netMs, isUtc: true);

  /// Two short lines about the launch, in the words of the data source.
  String get details {
    final first = <String>[
      if (rocket.isNotEmpty) rocket,
      if (provider.isNotEmpty) provider,
    ].join(' · ');
    final second = <String>[
      if (pad.isNotEmpty) pad,
      if (location.isNotEmpty) location,
    ].join(', ');
    final withStatus = <String>[
      if (second.isNotEmpty) second,
      if (status.isNotEmpty) status,
    ].join(' · ');
    return <String>[
      if (first.isNotEmpty) first,
      if (withStatus.isNotEmpty) withStatus,
    ].join('\n');
  }

  Map<String, Object> toJson() => <String, Object>{
        'id': id,
        'name': name,
        'netMs': netMs,
        'timeKnown': timeKnown,
        'status': status,
        'provider': provider,
        'rocket': rocket,
        'pad': pad,
        'location': location,
      };

  static Launch? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }
    String text(String key) {
      final v = json[key];
      return v is String ? v : '';
    }

    final id = json['id'];
    final name = json['name'];
    final net = json['netMs'];
    final known = json['timeKnown'];
    if (id is String && name is String && net is int) {
      return Launch(
        id: id,
        name: name,
        netMs: net,
        timeKnown: known is bool ? known : true,
        status: text('status'),
        provider: text('provider'),
        rocket: text('rocket'),
        pad: text('pad'),
        location: text('location'),
      );
    }
    return null;
  }
}

/// Reads data from the internet for the two optional online features: the
/// space station's orbit data and the list of rocket launches. Nothing about
/// the user is sent; the services only see the phone's internet address.
class OnlineService {
  OnlineService({this.userAgent = 'Heliora (github.com/lumio-apps/heliora)'});

  final String userAgent;

  /// The only hosts Heliora talks to for these features.
  static const Set<String> trustedHosts = <String>{
    'api.wheretheiss.at',
    'celestrak.org',
    'll.thespacedevs.com',
  };

  static const int _maxBytes = 3 * 1024 * 1024;

  static const String _issTleUrl =
      'https://api.wheretheiss.at/v1/satellites/25544/tles';
  static const String _issTleFallbackUrl =
      'https://celestrak.org/NORAD/elements/gp.php?CATNR=25544&FORMAT=TLE';
  static const String _launchesUrl =
      'https://ll.thespacedevs.com/2.3.0/launches/upcoming/?limit=25&ordering=net';

  Future<String> _get(String url) async {
    final uri = Uri.parse(url);
    if (uri.scheme != 'https' || !trustedHosts.contains(uri.host)) {
      throw const HttpException('Unexpected address');
    }
    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 10);
    try {
      final request = await client.getUrl(uri);
      request.headers.set('User-Agent', userAgent);
      request.headers.set('Accept', 'application/json, text/plain');
      final response =
          await request.close().timeout(const Duration(seconds: 20));
      if (response.statusCode != 200) {
        await response.drain<void>();
        throw HttpException('Server answered ${response.statusCode}');
      }
      final bytes = <int>[];
      await for (final chunk
          in response.timeout(const Duration(seconds: 20))) {
        bytes.addAll(chunk);
        if (bytes.length > _maxBytes) {
          throw const HttpException('Answer is too big');
        }
      }
      return utf8.decode(bytes);
    } finally {
      client.close(force: true);
    }
  }

  /// Downloads the station's orbit data. Tries wheretheiss.at first and
  /// Celestrak when that fails. Throws when neither works.
  Future<IssTle> fetchIssTle() async {
    final now = DateTime.now().millisecondsSinceEpoch;
    try {
      return parseWhereTheIss(await _get(_issTleUrl), now);
    } on Exception {
      return parseCelestrak(await _get(_issTleFallbackUrl), now);
    }
  }

  /// Downloads the next rocket launches. Throws on any problem.
  Future<List<Launch>> fetchLaunches() async {
    return parseLaunches(await _get(_launchesUrl));
  }

  /// The JSON from wheretheiss.at: an object with "line1" and "line2".
  static IssTle parseWhereTheIss(String body, int fetchedAtMs) {
    final json = jsonDecode(body);
    if (json is! Map<String, dynamic>) {
      throw const FormatException('Unexpected answer');
    }
    final l1 = json['line1'];
    final l2 = json['line2'];
    if (l1 is! String || l2 is! String) {
      throw const FormatException('No orbit lines');
    }
    final name = json['header'] is String
        ? (json['header'] as String).trim()
        : (json['name'] is String ? (json['name'] as String).trim() : 'ISS');
    return _checked(name.isEmpty ? 'ISS' : name, l1, l2, fetchedAtMs);
  }

  /// Plain text from Celestrak: a name line followed by the two TLE lines.
  static IssTle parseCelestrak(String body, int fetchedAtMs) {
    final lines = body
        .split(RegExp(r'\r?\n'))
        .map((l) => l.trimRight())
        .where((l) => l.trim().isNotEmpty)
        .toList();
    for (var i = 0; i + 1 < lines.length; i++) {
      if (lines[i].startsWith('1 ') && lines[i + 1].startsWith('2 ')) {
        final name = i > 0 ? lines[i - 1].trim() : 'ISS';
        return _checked(name, lines[i], lines[i + 1], fetchedAtMs);
      }
    }
    throw const FormatException('No orbit lines');
  }

  static IssTle _checked(String name, String l1, String l2, int at) {
    final tle = IssTle(name: name, line1: l1, line2: l2, fetchedAtMs: at);
    final sat = tle.toSgp4();
    if (sat == null) {
      throw const FormatException('Not a TLE');
    }
    // The ISS is NORAD number 25544; refuse anything else.
    if (!l1.substring(2).trimLeft().startsWith('25544')) {
      throw const FormatException('Not the space station');
    }
    return tle;
  }

  /// The JSON of "upcoming launches". Anything that is missing is skipped,
  /// so a changed answer shows fewer details instead of failing.
  static List<Launch> parseLaunches(String body) {
    final json = jsonDecode(body);
    if (json is! Map<String, dynamic>) {
      throw const FormatException('Unexpected answer');
    }
    final results = json['results'];
    if (results is! List) {
      throw const FormatException('No results');
    }
    final out = <Launch>[];
    for (final r in results) {
      if (r is! Map<String, dynamic>) {
        continue;
      }
      final id = r['id'];
      final name = r['name'];
      final netText = r['net'];
      final net = netText is String ? DateTime.tryParse(netText) : null;
      if (id is! String || name is! String || net == null) {
        continue;
      }
      final precision = _text(r['net_precision'], 'abbrev').toUpperCase();
      final pad = r['pad'];
      out.add(Launch(
        id: id,
        name: name,
        netMs: net.toUtc().millisecondsSinceEpoch,
        timeKnown: precision.isEmpty ||
            precision == 'SEC' ||
            precision == 'MIN' ||
            precision == 'HR' ||
            precision == 'HOUR',
        status: _text(r['status'], 'abbrev').isNotEmpty
            ? _text(r['status'], 'abbrev')
            : _text(r['status'], 'name'),
        provider: _text(r['launch_service_provider'], 'name'),
        rocket: _rocketName(r['rocket']),
        pad: _text(pad, 'name'),
        location: pad is Map<String, dynamic> ? _text(pad['location'], 'name') : '',
      ));
    }
    out.sort((a, b) => a.netMs.compareTo(b.netMs));
    return out;
  }

  static String _text(Object? map, String key) {
    if (map is Map<String, dynamic>) {
      final v = map[key];
      if (v is String) {
        return v.trim();
      }
    }
    return '';
  }

  static String _rocketName(Object? rocket) {
    if (rocket is Map<String, dynamic>) {
      final config = rocket['configuration'];
      final full = _text(config, 'full_name');
      return full.isNotEmpty ? full : _text(config, 'name');
    }
    return '';
  }
}

/// Reads and writes small JSON files in the app's private folder.
class OnlineStore {
  OnlineStore({Future<String> Function()? folder}) : _folder = folder;

  final Future<String> Function()? _folder;
  String? _dir;

  Future<File?> _file(String name) async {
    final dir = _dir ??= await (_folder?.call() ?? Future<String>.value(''));
    if (dir.isEmpty) {
      return null;
    }
    return File('$dir${Platform.pathSeparator}$name');
  }

  Future<Object?> read(String name) async {
    try {
      final file = await _file(name);
      if (file == null || !await file.exists()) {
        return null;
      }
      return jsonDecode(await file.readAsString());
    } on Exception {
      return null;
    }
  }

  Future<void> write(String name, Object json) async {
    try {
      final file = await _file(name);
      if (file == null) {
        return;
      }
      final temp = File('${file.path}.tmp');
      await temp.writeAsString(jsonEncode(json), flush: true);
      await temp.rename(file.path);
    } on Exception {
      // Saving is best effort.
    }
  }
}

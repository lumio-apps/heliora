import 'package:flutter/foundation.dart';

import '../core/sgp4.dart';
import '../data/online_service.dart';

/// The data for the optional online features: the space station's orbit and
/// the list of rocket launches. It is kept on the phone, so both keep
/// working offline with what was downloaded last.
class OnlineState extends ChangeNotifier {
  OnlineState({OnlineService? service, OnlineStore? store})
      : _service = service ?? OnlineService(),
        _store = store ?? OnlineStore();

  final OnlineService _service;
  OnlineStore _store;

  /// Where the saved files live. Set once the app knows its folder.
  void useStore(OnlineStore store) => _store = store;

  IssTle? _tle;
  Sgp4? _sat;
  List<Launch> _launches = const <Launch>[];
  int _launchesFetchedMs = 0;

  bool _loadingIss = false;
  bool _issFailed = false;
  bool _loadingLaunches = false;
  bool _launchesFailed = false;

  IssTle? get tle => _tle;

  /// The orbit of the station, or null until it was downloaded once.
  Sgp4? get sat => _sat;
  List<Launch> get launches => _launches;
  bool get loadingIss => _loadingIss;
  bool get issFailed => _issFailed;
  bool get loadingLaunches => _loadingLaunches;
  bool get launchesFailed => _launchesFailed;

  static const Duration _issMaxAge = Duration(hours: 12);
  static const Duration _launchMaxAge = Duration(hours: 3);

  /// Reads what was saved by an earlier download.
  Future<void> loadCache() async {
    final tle = IssTle.fromJson(await _store.read('iss_tle.json'));
    if (tle != null) {
      final sat = tle.toSgp4();
      if (sat != null) {
        _tle = tle;
        _sat = sat;
      }
    }
    final saved = await _store.read('launches.json');
    if (saved is Map<String, dynamic>) {
      final list = saved['items'];
      final at = saved['fetchedAtMs'];
      if (list is List) {
        _launches = <Launch>[
          for (final item in list)
            if (Launch.fromJson(item) != null) Launch.fromJson(item)!,
        ];
      }
      if (at is int) {
        _launchesFetchedMs = at;
      }
    }
    notifyListeners();
  }

  /// Downloads fresh orbit data when there is none or it is over 12 hours
  /// old (or when [force] is set). Does nothing while a download runs.
  Future<void> refreshIss({bool force = false}) async {
    if (_loadingIss) {
      return;
    }
    final tle = _tle;
    if (!force && tle != null) {
      final age = DateTime.now().millisecondsSinceEpoch - tle.fetchedAtMs;
      if (age < _issMaxAge.inMilliseconds) {
        return;
      }
    }
    _loadingIss = true;
    _issFailed = false;
    notifyListeners();
    try {
      final fresh = await _service.fetchIssTle();
      final sat = fresh.toSgp4();
      if (sat != null) {
        _tle = fresh;
        _sat = sat;
        await _store.write('iss_tle.json', fresh.toJson());
      }
    } on Exception {
      _issFailed = true;
    } finally {
      _loadingIss = false;
      notifyListeners();
    }
  }

  /// Downloads the launch list when it is over 3 hours old (or [force]).
  Future<void> refreshLaunches({bool force = false}) async {
    if (_loadingLaunches) {
      return;
    }
    final age = DateTime.now().millisecondsSinceEpoch - _launchesFetchedMs;
    if (!force && _launches.isNotEmpty && age < _launchMaxAge.inMilliseconds) {
      return;
    }
    _loadingLaunches = true;
    _launchesFailed = false;
    notifyListeners();
    try {
      final list = await _service.fetchLaunches();
      _launches = list;
      _launchesFetchedMs = DateTime.now().millisecondsSinceEpoch;
      await _store.write('launches.json', <String, Object>{
        'fetchedAtMs': _launchesFetchedMs,
        'items': <Object>[for (final l in list) l.toJson()],
      });
    } on Exception {
      _launchesFailed = true;
    } finally {
      _loadingLaunches = false;
      notifyListeners();
    }
  }
}

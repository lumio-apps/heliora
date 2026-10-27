import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'native_bridge.dart';

/// Which solar-system view the Explore tab shows.
enum ViewMode { flat, globe }

/// Everything Heliora remembers. Stored as one small JSON file in the app's
/// private folder, which Android keeps when the app is updated.
@immutable
class HelioraSettings {
  const HelioraSettings({
    this.themeMode = ThemeMode.system,
    this.localeCode = '',
    this.viewMode = ViewMode.flat,
    this.autoUpdateCheck = true,
    this.lastUpdateCheckMs = 0,
    this.bestQuizScore = 0,
  });

  final ThemeMode themeMode;

  /// Empty means "follow the phone's language".
  final String localeCode;
  final ViewMode viewMode;
  final bool autoUpdateCheck;
  final int lastUpdateCheckMs;
  final int bestQuizScore;

  HelioraSettings copyWith({
    ThemeMode? themeMode,
    String? localeCode,
    ViewMode? viewMode,
    bool? autoUpdateCheck,
    int? lastUpdateCheckMs,
    int? bestQuizScore,
  }) {
    return HelioraSettings(
      themeMode: themeMode ?? this.themeMode,
      localeCode: localeCode ?? this.localeCode,
      viewMode: viewMode ?? this.viewMode,
      autoUpdateCheck: autoUpdateCheck ?? this.autoUpdateCheck,
      lastUpdateCheckMs: lastUpdateCheckMs ?? this.lastUpdateCheckMs,
      bestQuizScore: bestQuizScore ?? this.bestQuizScore,
    );
  }

  Map<String, Object> toJson() {
    return <String, Object>{
      'version': 1,
      'theme': themeMode.name,
      'locale': localeCode,
      'view': viewMode.name,
      'autoUpdateCheck': autoUpdateCheck,
      'lastUpdateCheckMs': lastUpdateCheckMs,
      'bestQuizScore': bestQuizScore,
    };
  }

  /// Reads stored JSON. Unknown or broken values fall back to defaults, so a
  /// newer or older file never wipes the rest of the settings.
  factory HelioraSettings.fromJson(Map<String, dynamic> json) {
    const d = HelioraSettings();
    ThemeMode theme = d.themeMode;
    for (final mode in ThemeMode.values) {
      if (mode.name == json['theme']) {
        theme = mode;
      }
    }
    ViewMode view = d.viewMode;
    for (final mode in ViewMode.values) {
      if (mode.name == json['view']) {
        view = mode;
      }
    }
    final locale = json['locale'];
    final auto = json['autoUpdateCheck'];
    final last = json['lastUpdateCheckMs'];
    final best = json['bestQuizScore'];
    return HelioraSettings(
      themeMode: theme,
      localeCode: locale is String ? locale : d.localeCode,
      viewMode: view,
      autoUpdateCheck: auto is bool ? auto : d.autoUpdateCheck,
      lastUpdateCheckMs: last is int ? last : d.lastUpdateCheckMs,
      bestQuizScore: best is int ? best : d.bestQuizScore,
    );
  }
}

/// Loads and saves [HelioraSettings] as `settings.json`.
class SettingsStore {
  SettingsStore({NativeBridge bridge = const NativeBridge()})
      : _bridge = bridge;

  final NativeBridge _bridge;
  String? _dir;

  Future<File?> _file(String name) async {
    _dir ??= await _bridge.filesDir();
    final dir = _dir;
    if (dir == null || dir.isEmpty) {
      return null;
    }
    return File('$dir${Platform.pathSeparator}$name');
  }

  Future<HelioraSettings> load() async {
    try {
      final file = await _file('settings.json');
      if (file == null || !await file.exists()) {
        return const HelioraSettings();
      }
      final json = jsonDecode(await file.readAsString());
      if (json is Map<String, dynamic>) {
        return HelioraSettings.fromJson(json);
      }
    } on Exception {
      // A broken file is ignored; defaults are used instead.
    }
    return const HelioraSettings();
  }

  /// Writes to a temporary file first and then renames it, so a crash while
  /// saving never leaves a half-written settings file.
  Future<void> save(HelioraSettings settings) async {
    try {
      final file = await _file('settings.json');
      if (file == null) {
        return;
      }
      final temp = File('${file.path}.tmp');
      await temp.writeAsString(jsonEncode(settings.toJson()), flush: true);
      await temp.rename(file.path);
    } on Exception {
      // Saving is best effort; the app keeps working with what it has.
    }
  }
}

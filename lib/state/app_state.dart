import 'package:flutter/material.dart';

import '../core/version.dart';
import '../data/native_bridge.dart';
import '../data/settings.dart';
import '../data/update_service.dart';

/// Result of a manual "Check for updates".
enum UpdateCheckResult { newer, upToDate, failed }

/// Holds the settings and update state for the whole app.
class AppState extends ChangeNotifier {
  AppState({
    SettingsStore? store,
    UpdateService? updates,
    NativeBridge bridge = const NativeBridge(),
  })  : _store = store ?? SettingsStore(),
        _updates = updates ?? UpdateService(),
        _bridge = bridge;

  final SettingsStore _store;
  final UpdateService _updates;
  final NativeBridge _bridge;

  HelioraSettings _settings = const HelioraSettings();
  HelioraSettings get settings => _settings;

  String _appVersion = '';

  /// Installed version name, for example "1.0.0".
  String get appVersion => _appVersion;

  UpdateInfo? _available;

  /// A newer release found by the automatic daily check, not yet shown.
  UpdateInfo? get availableUpdate => _available;

  bool _checking = false;
  bool get checkingForUpdate => _checking;

  NativeBridge get bridge => _bridge;

  Future<void> load() async {
    _settings = await _store.load();
    _appVersion = await _bridge.appVersion();
    notifyListeners();
  }

  Future<void> _update(HelioraSettings next) async {
    _settings = next;
    notifyListeners();
    await _store.save(next);
  }

  Future<void> setThemeMode(ThemeMode mode) =>
      _update(_settings.copyWith(themeMode: mode));

  Future<void> setLocaleCode(String code) =>
      _update(_settings.copyWith(localeCode: code));

  Future<void> setViewMode(ViewMode mode) =>
      _update(_settings.copyWith(viewMode: mode));

  Future<void> setAutoUpdateCheck(bool value) =>
      _update(_settings.copyWith(autoUpdateCheck: value));

  Future<void> setBirthDate(DateTime date) => _update(
      _settings.copyWith(birthDateMs: date.millisecondsSinceEpoch));

  /// Keeps the best quiz score. Returns true when [score] is a new best.
  Future<bool> recordQuizScore(int score) async {
    if (score <= _settings.bestQuizScore) {
      return false;
    }
    await _update(_settings.copyWith(bestQuizScore: score));
    return true;
  }

  /// Runs at most once a day when the user allows it, and never shows an
  /// error: a failed check just tries again tomorrow.
  Future<void> autoCheckForUpdate() async {
    if (!_settings.autoUpdateCheck || _appVersion.isEmpty) {
      return;
    }
    final now = DateTime.now().millisecondsSinceEpoch;
    const day = 24 * 60 * 60 * 1000;
    if (now - _settings.lastUpdateCheckMs < day) {
      return;
    }
    await _update(_settings.copyWith(lastUpdateCheckMs: now));
    try {
      final info = await _updates.latest();
      if (isNewerVersion(info.tag, _appVersion)) {
        _available = info;
        notifyListeners();
      }
    } on Exception {
      // Offline or GitHub unreachable: ignore.
    }
  }

  /// Clears [availableUpdate] once its dialog has been shown.
  void dismissAvailableUpdate() {
    _available = null;
    notifyListeners();
  }

  /// The manual check from Settings.
  Future<(UpdateCheckResult, UpdateInfo?)> checkForUpdate() async {
    _checking = true;
    notifyListeners();
    try {
      final info = await _updates.latest();
      final current = _appVersion.isEmpty ? '0.0.0' : _appVersion;
      if (isNewerVersion(info.tag, current)) {
        return (UpdateCheckResult.newer, info);
      }
      return (UpdateCheckResult.upToDate, info);
    } on Exception {
      return (UpdateCheckResult.failed, null);
    } finally {
      _checking = false;
      notifyListeners();
    }
  }
}

/// Makes [AppState] available to every screen.
class AppScope extends InheritedNotifier<AppState> {
  const AppScope({super.key, required AppState state, required super.child})
      : super(notifier: state);

  static AppState of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<AppScope>();
    assert(scope != null, 'No AppScope above this context');
    return scope!.notifier!;
  }

  /// Reads the state without rebuilding when it changes.
  static AppState read(BuildContext context) {
    final element = context.getElementForInheritedWidgetOfExactType<AppScope>();
    return (element!.widget as AppScope).notifier!;
  }
}

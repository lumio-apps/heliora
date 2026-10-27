import 'package:flutter/services.dart';

/// Small helpers implemented in MainActivity.kt, so the app needs no
/// third-party plugins.
class NativeBridge {
  const NativeBridge();

  static const MethodChannel _channel =
      MethodChannel('online.lumioapps.heliora/native');

  /// The app's private files folder. It survives app updates and is only
  /// removed when the app is uninstalled. Empty when unknown.
  Future<String> filesDir() async {
    try {
      final result = await _channel.invokeMethod<String>('filesDir');
      return result ?? '';
    } on Exception {
      return '';
    }
  }

  /// The installed version name, for example "1.0.0". Empty when unknown.
  Future<String> appVersion() async {
    try {
      final result = await _channel.invokeMethod<String>('appVersion');
      return result ?? '';
    } on Exception {
      return '';
    }
  }

  /// Opens an https link in the browser. False when nothing could open it.
  Future<bool> openUrl(String url) async {
    try {
      final result = await _channel
          .invokeMethod<bool>('openUrl', <String, String>{'url': url});
      return result ?? false;
    } on Exception {
      return false;
    }
  }
}

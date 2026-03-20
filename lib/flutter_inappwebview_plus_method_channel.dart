import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_inappwebview_plus_platform_interface.dart';

/// An implementation of [FlutterInappwebviewPlusPlatform] that uses method channels.
class MethodChannelFlutterInappwebviewPlus extends FlutterInappwebviewPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_inappwebview_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

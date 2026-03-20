import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_inappwebview_plus_method_channel.dart';

abstract class FlutterInappwebviewPlusPlatform extends PlatformInterface {
  /// Constructs a FlutterInappwebviewPlusPlatform.
  FlutterInappwebviewPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterInappwebviewPlusPlatform _instance = MethodChannelFlutterInappwebviewPlus();

  /// The default instance of [FlutterInappwebviewPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterInappwebviewPlus].
  static FlutterInappwebviewPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterInappwebviewPlusPlatform] when
  /// they register themselves.
  static set instance(FlutterInappwebviewPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

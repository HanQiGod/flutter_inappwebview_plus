import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_inappwebview_plus/flutter_inappwebview_plus.dart';
import 'package:flutter_inappwebview_plus/flutter_inappwebview_plus_platform_interface.dart';
import 'package:flutter_inappwebview_plus/flutter_inappwebview_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterInappwebviewPlusPlatform
    with MockPlatformInterfaceMixin
    implements FlutterInappwebviewPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterInappwebviewPlusPlatform initialPlatform = FlutterInappwebviewPlusPlatform.instance;

  test('$MethodChannelFlutterInappwebviewPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterInappwebviewPlus>());
  });

  test('getPlatformVersion', () async {
    FlutterInappwebviewPlus flutterInappwebviewPlusPlugin = FlutterInappwebviewPlus();
    MockFlutterInappwebviewPlusPlatform fakePlatform = MockFlutterInappwebviewPlusPlatform();
    FlutterInappwebviewPlusPlatform.instance = fakePlatform;

    expect(await flutterInappwebviewPlusPlugin.getPlatformVersion(), '42');
  });
}

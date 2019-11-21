import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:t144_transitive_ios_plugin_2/t144_transitive_ios_plugin_2.dart';

void main() {
  const MethodChannel channel = MethodChannel('t144_transitive_ios_plugin_2');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await T144TransitiveIosPlugin_2.platformVersion, '42');
  });
}

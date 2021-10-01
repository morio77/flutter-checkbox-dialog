import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_checkbox_dialog/flutter_checkbox_dialog.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_checkbox_dialog');

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
    expect(await FlutterCheckboxDialog.platformVersion, '42');
  });
}

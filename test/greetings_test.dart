import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:greetings/greetings.dart';

void main() {
  const MethodChannel channel = MethodChannel('greetings');

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
    expect(await Greetings.platformVersion, '42');
  });
}

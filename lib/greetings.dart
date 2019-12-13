import 'dart:async';

import 'package:flutter/services.dart';

class Greetings {
  static const MethodChannel _channel =
      const MethodChannel('greetings');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }



  static Future<String> get defaultGreeting async {
    final String version = await _channel.invokeMethod('getDefaultGreeting');
    return version;
  }

  static Future<String> greetingForUser(String name) async {
    final String version = await _channel.invokeMethod('getDefaultGreetingForUser',{'name': name} );
    return version;
  }
}

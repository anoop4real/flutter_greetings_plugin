import Flutter
import UIKit

public class SwiftGreetingsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "greetings", binaryMessenger: registrar.messenger())
    let instance = SwiftGreetingsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
        case "getPlatformVersion":
            result("iOS " + UIDevice.current.systemVersion)
        case "getDefaultGreeting":
            result("Welcome iOS user")
        case "getDefaultGreetingForUser":
            guard let args = call.arguments as? [String: Any], let name = args["name"] as? String else {
                //If no arguments then retuen the default
              result("Welcome iOS user")
                return
            }
            result("Welcome iOS user \(name)")
        default:
        result(FlutterMethodNotImplemented)
    }
  }
}

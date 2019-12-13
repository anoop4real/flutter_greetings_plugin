#import "GreetingsPlugin.h"
#if __has_include(<greetings/greetings-Swift.h>)
#import <greetings/greetings-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "greetings-Swift.h"
#endif

@implementation GreetingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGreetingsPlugin registerWithRegistrar:registrar];
}
@end

#import "FlutterCheckboxDialogPlugin.h"
#if __has_include(<flutter_checkbox_dialog/flutter_checkbox_dialog-Swift.h>)
#import <flutter_checkbox_dialog/flutter_checkbox_dialog-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_checkbox_dialog-Swift.h"
#endif

@implementation FlutterCheckboxDialogPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCheckboxDialogPlugin registerWithRegistrar:registrar];
}
@end

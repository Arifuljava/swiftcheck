import Cocoa
import FlutterMacOS

@NSApplicationMain
class : FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }
}
//AppDelegate
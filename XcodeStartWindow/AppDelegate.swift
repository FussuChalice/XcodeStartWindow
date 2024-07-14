import Cocoa

class AppDelegate : NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        
        // Close all opened windows
        if let window = NSApplication.shared.windows.first {
            window.close()
        }
        
        // Start main window
        MainWindow.create()
    }
    
}

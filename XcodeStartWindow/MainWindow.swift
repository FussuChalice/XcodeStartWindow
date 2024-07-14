import Cocoa
import SwiftUI

class MainWindow {
    
    static private let mainWindowRect : NSRect = NSRect(x: 0, y: 0, width: 750, height: 450)
    static private let mainWindowID : NSUserInterfaceItemIdentifier = NSUserInterfaceItemIdentifier("xcodeStartWindow.windows.main")
    
    static private func getContentView() -> NSView {
        let contentView = NSVisualEffectView(frame: mainWindowRect)
        
        contentView.blendingMode = .behindWindow
        contentView.state = .active
        
        contentView.wantsLayer = true
        contentView.layer?.cornerRadius = 10
        contentView.layer?.masksToBounds = true
        
        contentView.layer?.borderColor = NSColor.black.cgColor
        contentView.layer?.borderWidth = 0.30
        
        let hostingView = NSHostingView(rootView: MainWindowView())
        hostingView.frame = contentView.bounds
        hostingView.autoresizingMask = [.width, .height]
        
        contentView.addSubview(hostingView)
        
        return contentView
    }
    
    static func create() -> Void {
        let mainWindow = NSWindow(
            contentRect: mainWindowRect,
            styleMask: [.borderless],
            backing: .buffered,
            defer: true)
        
        mainWindow.identifier = mainWindowID
        
        mainWindow.center()
        mainWindow.isOpaque = false
        mainWindow.backgroundColor = .clear
        
        mainWindow.isMovableByWindowBackground = true
        
        mainWindow.contentView = getContentView()
        
        mainWindow.makeKeyAndOrderFront(nil)
    }
}

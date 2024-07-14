import SwiftUI

@main
struct XcodeStartWindowApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate : AppDelegate
    
    var body: some Scene {
        WindowGroup {
        }
    }
}

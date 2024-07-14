import SwiftUI

struct MainWindowView: View {
    
    var body: some View {
        ZStack {
            CloseWindowButtonView()
            
            Color.black
                .opacity(0.3)
                .overlay(
                    VStack {
                        XcodeLogoWithGlowView()
                        XcodeVersionView()
                        
                        Spacer()
                            .frame(height: 30)
                        
                        ButtonsListView()
                    }
                )
                .frame(width: 500)
                .offset(x: -150, y: 0)
            
            RightSidebarView()
                .offset(x: 237, y: 0)
        }
        .frame(
            maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    MainWindowView()
}

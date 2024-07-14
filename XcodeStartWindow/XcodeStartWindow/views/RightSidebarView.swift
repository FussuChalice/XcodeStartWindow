import SwiftUI

struct RightSidebarView: View {
    var body: some View {
        VStack {
            ProjectSelectButtonView()
            ProjectSelectButtonView(
                title: "WeatherApp",
                selected: false)
            ProjectSelectButtonView(
                title: "TODOApp",
                selected: false)
        }
        .frame(width: 255, height: 430, alignment: .top)
    }
}

#Preview {
    RightSidebarView()
}

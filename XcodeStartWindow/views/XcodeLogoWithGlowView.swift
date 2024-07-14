import SwiftUI

struct XcodeLogoWithGlowView: View {
    var body: some View {
        Image("Xcode_icon")
            .resizable()
            .shadow(radius: 5)
            .background(
                Circle()
                    .fill(Color.blue)
                    .opacity(0.4)
                    .blur(radius: 150)
                    .frame(width: 300, height: 300)
            )
            .frame(width: 120, height: 120)
    }
}

#Preview {
    XcodeLogoWithGlowView()
}

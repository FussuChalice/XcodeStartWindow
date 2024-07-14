import SwiftUI

struct XcodeVersionView: View {
    var body: some View {
        VStack {
            Text("Xcode")
                .offset(CGSize(width: 0, height: -10))
                .font(.system(size: 36, weight: .bold))
            
            Text("Version 15.4")
                .offset(CGSize(width: 0.0, height: -8.0))
                .foregroundStyle(.gray)
                .font(.callout)
        }
    }
}

#Preview {
    XcodeVersionView()
}

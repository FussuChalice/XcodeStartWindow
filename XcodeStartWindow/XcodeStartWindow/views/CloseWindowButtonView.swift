import SwiftUI

struct CloseWindowButtonView: View {
    
    var body: some View {
        Image(systemName: "xmark.circle.fill")
            .imageScale(.medium)
            .opacity(0.3)
            .position(x: 18, y: 18)
            .zIndex(2)
            .onTapGesture {
            }
    }
}

#Preview {
    CloseWindowButtonView()
}

import SwiftUI

struct ButtonsListView: View {
    var body: some View {
        VStack {
            CustomButtonView(
                labelText: "Create New Project...",
                labelSystemIcon: "plus.app")
            
            CustomButtonView(
                labelText: "Clone Git Repository...",
                labelSystemIcon: "square.and.arrow.down.on.square")
            
            CustomButtonView(
                labelText: "Open Existing Project...",
                labelSystemIcon: "folder")
            
            
        }
        .frame(width: 350)
    }
}

#Preview {
    ButtonsListView()
}

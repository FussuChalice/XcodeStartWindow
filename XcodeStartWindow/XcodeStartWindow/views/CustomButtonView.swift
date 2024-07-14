import SwiftUI

struct CustomButtonView: View {
    @State var labelText : String = "-"
    @State var labelSystemIcon : String = "xmark.square"
    
    var body: some View {
        Button {
            
        } label: {
            CustomLabelView(title: labelText, systemIcon: labelSystemIcon)
                .frame(
                    width: 320,height: 25,
                           alignment: .leading)
                    
                    
                
        }
        .buttonStyle(CustomButtonStyle())
    }
}

#Preview {
    CustomButtonView()
}

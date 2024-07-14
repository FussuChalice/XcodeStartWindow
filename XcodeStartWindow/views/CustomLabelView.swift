import SwiftUI

struct CustomLabelView: View {
    
    @State var title : String = "-"
    @State var systemIcon : String = "xmark.square"
    
    var body: some View {
        HStack {
            Image(systemName: systemIcon)
                .imageScale(.large)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
            
            Text(title)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CustomLabelView()
}

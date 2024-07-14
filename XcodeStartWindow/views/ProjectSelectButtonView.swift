import SwiftUI

struct ProjectSelectButtonView: View {
    @State var title : String = "XcodeStartWindow"
    @State var path : String = "~/Projects"
    @State var selected : Bool = true
    
    var body: some View {
        Button {
             
        } label: {
            HStack {
                Image("xcodeproj.file.icon")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(height: 30)
                
                VStack(alignment: .leading, content: {
                    Text(title)
                        .fontWeight(.bold)
                    
                    Text(path)
                        .foregroundStyle(.gray)
                        .font(.caption2)
                })
            }
            .frame(width: 235, alignment: .leading)
        }
        .buttonStyle(ProjectSelectButtonStyle(selected: selected))
    }
}

#Preview {
    ProjectSelectButtonView()
}

import SwiftUI

struct ProjectSelectButtonStyle : ButtonStyle {
    var selected : Bool
    
    init(selected: Bool) {
        self.selected = selected
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.init(
                top: 5, leading: 10, bottom: 5, trailing: 10
            ))
            .background(
                selected ? .blue.opacity(0.7) : .clear,
                in: RoundedRectangle(cornerSize: CGSize(width: 5, height: 5), style: .circular)
            )
    }
}

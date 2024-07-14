import SwiftUI

struct CustomButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.init(top: 6,
                           leading: 8,
                           bottom: 6,
                           trailing: 8))
            .background(
                .gray.opacity(0.1),
                in: RoundedRectangle(cornerSize: CGSize(width: 5, height: 5), style: .circular)
            )
    }
}

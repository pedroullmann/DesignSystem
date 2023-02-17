import SwiftUI

public extension View {
    func textToken(_ token: DesignSystem.TextToken) -> some View {
        modifier(TextTokensModifier(token: token))
    }
}

struct TextTokensModifier: ViewModifier {
    private let token: DesignSystem.TextToken

    init(token: DesignSystem.TextToken) {
        self.token = token
    }

    func body(content: Content) -> some View {
        content
            .foregroundColor(token.color)
            .font(
                .custom(
                    token.typography.font.name,
                    fixedSize: token.typography.size
                )
            )
    }
}

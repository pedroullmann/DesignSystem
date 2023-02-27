import SwiftUI

public extension View {
    func textToken(_ token: DesignSystem.TextTokens) -> some View {
        modifier(TextTokensModifier(token: token))
    }
}

struct TextTokensModifier: ViewModifier {
    private let token: DesignSystem.TextTokens

    init(token: DesignSystem.TextTokens) {
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

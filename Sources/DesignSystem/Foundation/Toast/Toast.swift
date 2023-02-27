import Foundation

public struct Toast {
    public struct Style {
        public let foregroundColor: DesignSystem.DynamicColor
        public let textToken: DesignSystem.TextTokens
        public let padding: CGFloat
        public let cornerRadius: CGFloat

        public init(
            foregroundColor: DesignSystem.DynamicColor,
            textToken: DesignSystem.TextTokens,
            padding: CGFloat,
            cornerRadius: CGFloat
        ) {
            self.foregroundColor = foregroundColor
            self.textToken = textToken
            self.padding = padding
            self.cornerRadius = cornerRadius
        }
    }

    public let message: String
    public let style: Style

    public init(
        message: String,
        style: Style
    ) {
        self.message = message
        self.style = style
    }
}

// MARK: - Example

//public extension Toast {
//    static func positive(message: String) -> Self {
//        .init(
//            message: message,
//            style: .init(
//                foregroundColor: .staticGreen,
//                textToken: .init(.paragraph1, .staticWhite),
//                padding: DesignSystem.CornerRadius.small,
//                cornerRadius: DesignSystem.CornerRadius.small
//            )
//        )
//    }
//
//    static func warning(message: String) -> Self {
//        .init(
//            message: message,
//            style: .init(
//                foregroundColor: .staticYellow,
//                textToken: .init(.paragraph1, .staticWhite),
//                padding: DesignSystem.CornerRadius.small,
//                cornerRadius: DesignSystem.CornerRadius.small
//            )
//        )
//    }
//
//    static func negative(message: String) -> Self {
//        .init(
//            message: message,
//            style: .init(
//                foregroundColor: .staticRed,
//                textToken: .init(.paragraph1, .staticWhite),
//                padding: DesignSystem.CornerRadius.small,
//                cornerRadius: DesignSystem.CornerRadius.small
//            )
//        )
//    }
//}

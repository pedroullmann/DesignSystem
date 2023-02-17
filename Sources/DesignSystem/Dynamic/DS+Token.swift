import Foundation

public extension DesignSystem {
    struct TextToken {
        public let typography: DesignSystem.Typography
        public let color: DesignSystem.DynamicColor

        public init(
            _ typography: DesignSystem.Typography,
            _ color: DesignSystem.DynamicColor
        ) {
            self.typography = typography
            self.color = color
        }
    }
}

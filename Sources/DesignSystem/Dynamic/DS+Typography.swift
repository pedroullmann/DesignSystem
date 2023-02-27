import Foundation

public extension DesignSystem {
    struct Typography {
        public let font: Font
        public let size: CGFloat

        public init(
            font: Font,
            size: CGFloat
        ) {
            self.font = font
            self.size = size
        }

        public struct Font {
            public let family: String
            public let style: String

            public var name: String {
                "\(family)-\(style)"
            }

            public init(
                family: String,
                style: String
            ) {
                self.family = family
                self.style = style
            }
        }
    }
}

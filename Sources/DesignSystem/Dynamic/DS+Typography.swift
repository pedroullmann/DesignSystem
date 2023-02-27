import Foundation

public extension DesignSystem {
    struct Typography {
        public let font: Font
        public let size: CGFloat

        public struct Font {
            public let family: String
            public let style: String

            public var name: String {
                "\(family)-\(style)"
            }
        }
    }
}

import Foundation

public extension DesignSystem {
    struct Typography {
        public let font: Font
        public let size: CGFloat

        public struct Font {
            /// Ex: Montserrat
            public let family: String

            /// Ex: Regular
            public let style: String

            public var name: String {
                "\(family)-\(style)"
            }
        }
    }
}

import Foundation
import SwiftUI

public extension DesignSystem {
    struct DynamicColor {
        public let light: Color
        public let dark: Color

        func dynamic(scheme: ColorScheme) -> Color {
            scheme == .dark ? dark: light
        }

        public init(
            light: Color,
            dark: Color
        ) {
            self.light = light
            self.dark = dark
        }
    }
}

import Foundation
import SwiftUI

public extension DesignSystem {
    struct DynamicColor {
        public let light: Color
        public let dark: Color

        /// Validate color scheme and return the correct color.
        /// - Parameters:
        ///   - scheme: The possible color schemes, corresponding to the light and dark appearances.
        /// - Returns: Color.
        func dynamic(scheme: ColorScheme) -> Color {
            scheme == .dark ? dark: light
        }
    }
}

import SwiftUI

public extension Color {
    init(hex: String, alpha: Double = 1.0) {
        /// Trim non-hexadecimal characters from input string.
        var hexValue = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)

        /// Remove leading "#" character, if present.
        if hexValue.hasPrefix("#") {
            hexValue = String(hexValue.dropFirst())
        }

        /// Convert hexadecimal string to RGB value.
        var rgbValue: UInt64 = 0
        Scanner(string: hexValue).scanHexInt64(&rgbValue)

        /// Create and return Color instance.
        self.init(
            red: Double((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: Double((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: Double(rgbValue & 0x0000FF) / 255.0,
            opacity: alpha
        )
    }
}

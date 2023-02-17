import UIKit

public extension DesignSystem {

    /// Register fonts
    /// - Parameters:
    ///   - withFilename: Font name.
    ///   - fileExtension: Font extension, ex: ttf.
    struct Font {
        static func register(
            withFilename filename: String,
            fileExtension: String
        ) {
            guard
                let fontURL = Bundle.main.url(forResource: filename, withExtension: fileExtension),
                let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
                let font = CGFont(fontDataProvider)
            else {
                fatalError("Error: Unable to create CGFont from font data provider for file \(filename).\(fileExtension)")
            }

            var error: Unmanaged<CFError>?
            if !CTFontManagerRegisterGraphicsFont(font, &error) {
                let errorDescription = CFErrorCopyDescription(error?.takeUnretainedValue())
                let errorMessage = errorDescription.map(String.init(describing:)) ?? "Unknown error"
                fatalError("Error: Unable to register font file \(filename).\(fileExtension) - \(errorMessage)")
            }
        }
    }
}

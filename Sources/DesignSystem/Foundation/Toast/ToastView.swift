import SwiftUI

public struct ToastView: View {
    private let model: Toast

    public init(model: Toast) {
        self.model = model
    }

    public var body: some View {
        Text(model.message)
            .textToken(model.style.textToken)
            .padding(model.style.padding)
            .background(
                RoundedRectangle(cornerRadius: model.style.cornerRadius)
                    .foregroundColor(model.style.foregroundColor)
            )
    }
}

#if DEBUG
public struct ToastView_Previews: PreviewProvider {
    static let textToken: DesignSystem.TextTokens = .init(
        .init(
            font: .init(
                family: "MyFont",
                style: "Regular"
            ),
            size: 14
        ),
        .init(
            light: .init(hex: "#FFFFFF"),
            dark: .init(hex: "#FFFFFF")
        )
    )

    public static var previews: some View {
        Group {
            previewPositive
            previewWarning
            previewNegative
        }
    }

    static var previewPositive: some View {
        ToastView(
            model: .init(
                message: "Positive message",
                style: .init(
                    foregroundColor: .init(
                        light: .init(hex: "#228C22"),
                        dark: .init(hex: "#228C22")
                    ),
                    textToken: textToken,
                    padding: DesignSystem.Spacings.small,
                    cornerRadius: DesignSystem.CornerRadius.small
                )
            )
        )
    }

    static var previewWarning: some View {
        ToastView(
            model: .init(
                message: "Warning message",
                style: .init(
                    foregroundColor: .init(
                        light: .init(hex: "#E6CC00"),
                        dark: .init(hex: "#E6CC00")
                    ),
                    textToken: textToken,
                    padding: DesignSystem.Spacings.small,
                    cornerRadius: DesignSystem.CornerRadius.small
                )
            )
        )
    }

    static var previewNegative: some View {
        ToastView(
            model: .init(
                message: "Negative message",
                style: .init(
                    foregroundColor: .init(
                        light: .init(hex: "#DE0A26"),
                        dark: .init(hex: "#DE0A26")
                    ),
                    textToken: textToken,
                    padding: DesignSystem.Spacings.small,
                    cornerRadius: DesignSystem.CornerRadius.small
                )
            )
        )
    }
}
#endif


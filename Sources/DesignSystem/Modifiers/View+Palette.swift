import SwiftUI

public extension View {
    func foregroundColor(_ color: DesignSystem.DynamicColor) -> some View {
        modifier(ForegroundColorModifier(color: color))
    }

    func backgroundColor(_ color: DesignSystem.DynamicColor) -> some View {
        modifier(BackgroundColorModifier(color: color))
    }
}

struct ForegroundColorModifier: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    private let color: DesignSystem.DynamicColor

    init(color: DesignSystem.DynamicColor) {
        self.color = color
    }

    func body(content: Content) -> some View {
        content.foregroundColor(color.dynamic(scheme: colorScheme))
    }
}

struct BackgroundColorModifier: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    private let color: DesignSystem.DynamicColor

    init(color: DesignSystem.DynamicColor) {
        self.color = color
    }

    func body(content: Content) -> some View {
        content.background(color.dynamic(scheme: colorScheme))
    }
}

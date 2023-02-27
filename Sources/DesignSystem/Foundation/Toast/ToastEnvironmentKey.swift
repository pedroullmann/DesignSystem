import SwiftUI

public struct ToastViewEnvironmentKey: EnvironmentKey {
    public static let defaultValue: Toast? = nil
}

public extension EnvironmentValues {
    var toast: Toast? {
        get { self[ToastViewEnvironmentKey.self] }
        set { self[ToastViewEnvironmentKey.self] = newValue }
    }
}

import SwiftUI

public extension View {
    func toastView(
        position: ToastModifier.Position = .bottom,
        nanoseconds: UInt64 = 2_000_000_000 /// 2 seconds
    ) -> some View {
        modifier(
            ToastModifier(
                position: position,
                nanoseconds: nanoseconds
            )
        )
    }
}

public struct ToastModifier: ViewModifier {
    @Environment(\.toast) var toast: Toast?
    @State private var toastWasPresented = false
    private let position: Position
    private let nanoseconds: UInt64

    public init(
        position: Position,
        nanoseconds: UInt64
    ) {
        self.position = position
        self.nanoseconds = nanoseconds
    }

    public func body(content: Content) -> some View {
        ZStack(alignment: position.stackAlignment) {
            content

            toast.map {
                ToastView(model: $0)
                    .transition(.move(edge: position.transitionEdge))
                    .animation(.easeInOut(duration: 0.5))
                    .onAppear {
                        Task {
                            try? await Task.sleep(nanoseconds: nanoseconds)
                            toastWasPresented = true
                        }
                    }
                    .if(toastWasPresented) {
                        $0.environment(\.toast, nil)
                    }
            }
        }
    }
}

public extension ToastModifier {
    enum Position {
        case top
        case bottom

        var stackAlignment: Alignment {
            guard case .top = self else { return .bottom }
            return .top
        }

        var transitionEdge: Edge {
            guard case .top = self else { return .top }
            return .bottom
        }
    }
}

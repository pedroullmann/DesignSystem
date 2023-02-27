import SwiftUI

public extension View {
    func toastView(
        isPresented: Binding<Bool>,
        model: Toast,
        position: ToastModifier.Position = .bottom,
        nanoseconds: UInt64 = 2_000_000_000 /// 2 seconds
    ) -> some View {
        modifier(
            ToastModifier(
                isPresented: isPresented,
                model: model,
                position: position,
                nanoseconds: nanoseconds
            )
        )
    }
}

public struct ToastModifier: ViewModifier {
    @Binding var isPresented: Bool
    private let model: Toast
    private let position: Position
    private let nanoseconds: UInt64

    public init(
        isPresented: Binding<Bool>,
        model: Toast,
        position: ToastModifier.Position,
        nanoseconds: UInt64
    ) {
        self._isPresented = isPresented
        self.model = model
        self.position = position
        self.nanoseconds = nanoseconds
    }

    public func body(content: Content) -> some View {
        ZStack(alignment: position.stackAlignment) {
            content

            if isPresented {
                ToastView(model: model)
                    .transition(.move(edge: position.transitionEdge))
                    .animation(.easeInOut(duration: 0.5))
                    .onAppear {
                        Task {
                            try? await Task.sleep(nanoseconds: nanoseconds)
                            isPresented = false
                        }
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

import SwiftUI

struct MaskedCameraBlur: ViewModifier {
    
    public func body(content: Content) -> some View {
        ZStack {
            content
            VisualEffectView(effect: UIBlurEffect(style: .regular)).mask(EdgesMask())
        }
    }
}

extension View {
    
    func maskedCameraBlur() -> some View {
        self.modifier(MaskedCameraBlur())
    }
}

struct VisualEffectView: UIViewRepresentable {
    
    var effect: UIVisualEffect?
    
    public func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView {
        UIVisualEffectView()
    }
    
    public func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) {
        uiView.effect = effect
    }
}

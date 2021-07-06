import SwiftUI

@main
struct BlurredEdgesViewApp: App {
    
    static let visibleAspectRatio :CGFloat = 16.0/9.0 // Change this aspect ratio to change the visible area and the blurred one
    static let imageBounds = CGRect(origin: CGPoint.zero, size: CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width))
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(BEVStore(cameraBounds: Self.imageBounds, aspectRatio: Self.visibleAspectRatio))
        }
    }
}

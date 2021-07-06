import SwiftUI

final class BCEStore: ObservableObject {
    
    @Published var cameraBounds : CGRect
    @Published var aspectRatio : CGFloat
    
    init(cameraBounds: CGRect, aspectRatio: CGFloat) {
        self.cameraBounds = cameraBounds
        self.aspectRatio = aspectRatio
    }
    
    var cropArea : CGRect {
        return cropArea(with: cameraBounds)
    }
    
    private func cropArea(with cameraBounds: CGRect) -> CGRect {
        let rect = CGRect(x: 0, y: 0, width: cameraBounds.size.width, height: cameraBounds.size.height)
        let w = rect.size.width
        let h = rect.size.height
        let rectAspectRatio = w/h
        
        var n : CGFloat = 0
        var m : CGFloat = 0
        if rectAspectRatio < aspectRatio {
            n = w
            m = n / aspectRatio
        } else if rectAspectRatio > aspectRatio {
            m = h
            n = m * aspectRatio
        } else {
            n = w
            m = h
        }
        return CGRect(origin:CGPoint(x: round(rect.origin.x + (w-n)/2), y: round(rect.origin.y + (h-m)/2)), size: CGSize(width: round(n), height: round(m)))
    }
}

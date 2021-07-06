import SwiftUI

struct EdgesMask: View {
    
    @EnvironmentObject var store : BCEStore
    
    static func RectangleEdgePath(innerRect: CGRect, outerRect: CGRect) -> Path {
        var shape = Rectangle().path(in: outerRect)
        shape.addPath(Rectangle().path(in: innerRect))
        return shape
    }
    
    var body: some View {
        EdgesMask.RectangleEdgePath(innerRect: store.cropArea, outerRect: store.cameraBounds).fill(style: FillStyle(eoFill: true))
    }
}

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Group {
            Image(uiImage: UIImage(named:"Lenna.png")!).resizable()
                .scaledToFit()
        }
        .maskedCameraBlur()
        .frame(width: BlurredEdgesViewApp.imageBounds.width, height: BlurredEdgesViewApp.imageBounds.height)
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}

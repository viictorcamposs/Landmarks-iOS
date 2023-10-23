import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            LandmarkView()
                .environment(modelData)
        }
    }
}

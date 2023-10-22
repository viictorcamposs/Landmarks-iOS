import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) {
            LandmarkRow(landmark: $0)
        }
    }
}

#Preview {
    LandmarkList()
}

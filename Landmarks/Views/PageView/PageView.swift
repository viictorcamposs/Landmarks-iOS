import SwiftUI

struct PageView<Page: View>: View {
    @State private var currentPage = 0
    var pages: [Page]
    
    var body: some View {
        PageViewController(currentPage: $currentPage, pages: pages)
        Text("Current Page: \(currentPage)")
    }
}

#Preview {
    PageView(
        pages: ModelData().features.map({
            FeatureCard(landmark: $0)
        })
    )
    .aspectRatio(3 / 2, contentMode: .fit)
}

import SwiftUI

struct PageView<Page: View>: View {
    @State private var currentPage = 0
    var pages: [Page]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(currentPage: $currentPage, pages: pages)
            PageControl(currentPage: $currentPage, numberOfPages: pages.count)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
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

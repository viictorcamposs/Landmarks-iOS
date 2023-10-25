import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.top, 10)
                .padding(.leading, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) {
                        let item = $0
                        
                        NavigationLink {
                            LandmarkDetail(landmark: item)
                        } label: {
                            CategoryItem(landmark: item)
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(6))
    )
}

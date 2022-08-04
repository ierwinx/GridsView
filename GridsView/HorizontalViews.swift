import SwiftUI

struct HorizontalViews: View {
    
    private let gridItem: [GridItem] = Array(repeating: .init(.flexible(maximum: 40)), count: 3)
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItem) {
                ForEach(Variables.arrEmojis) { emoji in
                    Text(emoji.strEmoji)
                        .font(.largeTitle)
                }
            }
        }.navigationTitle("Horizontal")
    }
}

struct HorizontalViews_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalViews()
    }
}

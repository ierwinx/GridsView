import SwiftUI

struct VerticalViews: View {

    private let gridItem: [GridItem] = Array(repeating: .init(.flexible(maximum: 130)), count: 3)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItem) {
                ForEach(Variables.arrEmojis) { emoji in
                    Text(emoji.strEmoji)
                        .font(.largeTitle)
                }
            }
        }.navigationTitle("Vertical")
    }
}

struct VerticalViews_Previews: PreviewProvider {
    static var previews: some View {
        VerticalViews()
    }
}

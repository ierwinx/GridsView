import SwiftUI

struct ContentView: View {
    
    @State private var bSelbtn1 = false
    @State private var bSelbtn2 = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: VerticalViews(), isActive: $bSelbtn1) {
                    Button("Vertical") {
                        self.bSelbtn1 = true
                    }
                    .padding()
                    .padding([.trailing, .leading], 40)
                    .background(.red)
                    .foregroundColor(.white)
                }
                
                Spacer()
                    .frame(height: 40)
                
                NavigationLink(destination: HorizontalViews(), isActive: $bSelbtn2) {
                    Button("Horizontales") {
                        self.bSelbtn2 = true
                    }
                    .padding()
                    .padding([.trailing, .leading], 40)
                    .background(.blue)
                    .foregroundColor(.white)
                }
                
            }
            .navigationTitle("Grids")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

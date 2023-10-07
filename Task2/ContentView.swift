import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 0.5
    
    var body: some View {
        VStack {
            Group {
                Text("Марафон ").foregroundColor(.gray) +
                Text("по SwiftUI\n") +
                Text("Отцовский Пинок")
                    .foregroundColor(.blue)
                    .font(.title)
            }
            .frame(width: 300 * sliderValue, height: 200, alignment: .center)
            .border(Color.red, width: 1)
            .padding()
            
            Slider(value: $sliderValue, in: 0...1)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

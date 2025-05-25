import SwiftUI

struct ContentView: View {
    @State var emojis = ["🌸","🌼","🌺","🌻","🌷","🌹","🌿","🍀","🍃","🪴","🌱","🌾","🌸","🌼","🌺","🌻","🌷","🌹","🌿","🍀","🍃","🪴","🌱","🌾"].shuffled()
    @State var cardCount: Int = 24
    @State var themeColor = Color.pink
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
            ScrollView{
                cards
            }
            Spacer()
            
            themeChosing
            
        }
        .padding()
    }
    
    var themeChosing : some View {
        HStack(alignment: .bottom) {
            Spacer()
            themeButton(image: "leaf", themeTitle: "Nature", themeColor: .green, emojis: ["🌳","🌲","🍂","🍁","🌵","🌴","🪵","🪨","🌺","🌻","🍄","🌼"])
            Spacer()
            themeButton(image: "face.smiling", themeTitle: "Emotions", themeColor: .yellow, emojis: ["😀","😅","😂","😭","😡","😱","🥰","😴","🤢","😎","🤯","😇"])
            Spacer()
            themeButton(image: "cup.and.saucer", themeTitle: "Food", themeColor: .red, emojis: ["🍎","🍕","🍩","🍣","🍪","🥦","🍗","🍇","🥗","🍞","🍫","🍰"])
            Spacer()
        }
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    func themeButton(image: String, themeTitle: String, themeColor: Color, emojis: [String]) -> some View {
        Button(action: {
            let pairOfCards = Int.random(in: 2...12)
            self.cardCount = pairOfCards * 2
            self.emojis = (emojis[..<pairOfCards] + emojis[..<pairOfCards]).shuffled()
            self.themeColor = themeColor
        }, label: {
            VStack {
                Image(systemName: image)
                Text(themeTitle)
                    .font(.body)
            }
        })
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum:adaptiveSize))]){
            ForEach(0..<cardCount, id:\.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(self.themeColor)
    }
    
    var adaptiveSize: CGFloat {
        CGFloat(120 - (self.cardCount - 4) * 3)
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0: 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}


#Preview {
    ContentView()
}

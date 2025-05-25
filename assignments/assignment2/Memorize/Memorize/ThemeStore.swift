import Foundation
import SwiftUI

struct ThemeStore {
    
    func choseTheme(themeId: Int, nPairs: Int) -> Theme {
        switch themeId {
        case 0:
            return Theme(name: "Nature", emojis:
                            ["🌲", "🌻", "🌊", "🌵", "🌸", "🌼", "🍀", "🍂", "🌴", "🍁", "⛰️", "🌾"].shuffled(),
                         nPairs: nPairs, Color: .green)
        case 1:
            return Theme(name: "Technology", emojis:
                            ["💻", "📱", "🖥️", "⌨️", "🕹️", "📷", "🎮", "📡", "🧠", "🖨️", "🔋", "🔌"].shuffled(),
                         nPairs: nPairs, Color: .gray)
        case 2:
            return Theme(name: "Fantasy", emojis:
                            ["🐉", "🧝", "🧙‍♂️", "🦄", "🔮", "⚔️", "🧞‍♂️", "🪄", "👑", "🧚", "🏰", "🪶"].shuffled(),
                         nPairs: nPairs, Color: .purple)
        case 3:
            return Theme(name: "Emotions", emojis:
                            ["😀", "😢", "😡", "😱", "😂", "😍", "🤢", "😴", "😎", "😭", "🥳", "🤯"].shuffled(),
                         nPairs: nPairs, Color: .orange)
        case 4:
            return Theme(name: "Music", emojis:
                            ["🎸", "🎧", "🎺", "🥁", "🎻", "🎹", "🪕", "🎤", "📻", "🪗", "🎷", "🪘"].shuffled(),
                         nPairs: nPairs, Color: .pink)
        default:
            return Theme(name: "Space", emojis:
                            ["🌌", "🪐", "🌠", "🚀", "🛸", "👽", "🛰️", "🌙", "🔭", "☄️", "🌍", "🌞"].shuffled(),
                         nPairs: nPairs, Color: .blue)
        }
    }
    
    struct Theme {
        let name: String
        var emojis: [String]
        let nPairs: Int
        let Color: Color
    }
}

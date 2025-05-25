import Foundation

struct Palette: Identifiable {
    var name: String
    var emojis: String
    let id = UUID()
    
    static let builtins = [
        Palette(name: "Fantasy", emojis: "🐉🧝🧚🧞🧜🧙‍♂️🪄🧌👑🏰🪶🔮⚔️🛡️🦄🌌"),
        Palette(name: "Science", emojis: "🔬🧪🧫🧬📡💡📘🔭🧠🧰⚗️🧱🔋🧲💻"),
        Palette(name: "Desserts", emojis: "🍰🎂🧁🍩🍪🍫🍮🍨🍦🥧🍯🧇🍭"),
        Palette(name: "Insects", emojis: "🐞🐜🪰🪱🐛🦋🪳🪲🦗🦟🦂🕷️🕸️"),
        Palette(name: "Occupations", emojis: "👮‍♂️👩‍⚕️👨‍🍳🧑‍🏫👨‍🎨👩‍🔬🧑‍🚀👨‍✈️🧑‍💻👩‍🚒👨‍🔧👷‍♀️👨‍⚖️"),
        Palette(name: "Outer Space", emojis: "🪐🌠🚀🛰️🛸🌙☄️🌞🌌🌍👽🔭💫"),
        Palette(name: "Symbols", emojis: "❤️🧡💛💚💙💜🖤🤍🤎💯🔆💥✨⚡️🔥💤"),
        Palette(name: "Mythology", emojis: "⚡️🔱🦅🌊🧜‍♂️👁️‍🗨️🪬🐍🔮🏺👣🪓"),
        Palette(name: "Toys", emojis: "🧸🎲🪀🪁🎯🎮🧩🪆🚂🪄🪅🎠🎡")
    ]
}

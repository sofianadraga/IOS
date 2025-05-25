import SwiftUI

@main
struct MemorizeThemesApp: App {
    @StateObject var themeChooser = ThemeChooser()
    var body: some Scene {
        WindowGroup {
            ThemeChooserView(themeChooser: themeChooser)
        }
    }
}

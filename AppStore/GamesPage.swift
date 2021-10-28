//
//  GamesPage.swift
//  AppStore
//
//  Created by HyunSang Park on 2021/10/26.
//

import Foundation
import SwiftUI

struct GamesView: View {
    var gameStore = GameStorage()
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Today").font(Font.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Image("profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                }.padding([.leading, .trailing, .top])
                ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            FeaturedPostView(captionText: "New Updates", titleText: "The Sims Freeplay", subtitleText: "Bounjour form Pairs", image: "original")
                            FeaturedPostView(captionText: "New Updates", titleText: "The Sims Freeplay", subtitleText: "Bounjour form Pairs", image: "original")
                            FeaturedPostView(captionText: "New Updates", titleText: "The Sims Freeplay", subtitleText: "Bounjour form Pairs", image: "original")
                            FeaturedPostView(captionText: "New Updates", titleText: "The Sims Freeplay", subtitleText: "Bounjour form Pairs", image: "original")
                        }
                    })
                    Divider()
                    HorizontalScrollView(items: self.gameStore.thisWeeksGames)
                }
            }
    }
    func loadProfile() {
    
    }
}

struct GameStorage {
    var thisWeeksGames = [GameData(id: UUID(), title: "ArcheApp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"), GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!"),GameData(id: UUID(), title: "Archeapp", image: "archeapplogo", subtile: "The best dang app out there!")]
}

struct GameData : Identifiable {
    var id = UUID()
    var title = String()
    var image = String()
    var subtile = String()
}


struct GamesView_Preview: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}


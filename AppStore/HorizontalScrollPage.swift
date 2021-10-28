//
//  HorizontalScrollPage.swift
//  AppStore
//
//  Created by HyunSang Park on 2021/10/27.
//

import Foundation
import SwiftUI

struct HorizontalScrollView : View {
    var items: [GameData]
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                ForEach(0 ..< 3) {
                    row in
                    HStack {
                        ForEach(0 ..< self.items.count / 3) {
                            column in
                            GameCell(data: self.items[self.determineCurrentCell(row: row, column: column)]).frame(width: 100, alignment: .leading)
                        }
                    }
                }
            }
        }
    }
    func determineCurrentCell(row: Int, column: Int) -> Int {
        return ((((column + 1) * 3) - row ) - 1)
    }
}

struct GameCell: View {
    var data: GameData
    var body: some View {
        HStack {
            Image(data.image).resizable().frame(width: 50, height: 50, alignment: .leading).cornerRadius(10)
            VStack (alignment: .leading){
                Text(data.title)
                Text(data.subtile)
            }
        }.padding().frame(width:5000, alignment: .leading)
    }
}


struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView(items: GameStorage().thisWeeksGames)
    }
}

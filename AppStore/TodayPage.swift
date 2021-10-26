//
//  TodayPage.swift
//  AppStore
//
//  Created by HyunSang Park on 2021/10/26.
//

import Foundation
import SwiftUI

struct TodayView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Wednesday, April 15").foregroundColor(.gray).bold().font(Font.footnote)
                        Text("Today").font(Font.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                            Image("profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                }.padding()
                HighlightView().frame(height: 500, alignment: .leading)
            }
        }
    }
    func loadProfile() {

    }
}

struct HighlightView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("puppy").resizable()
            }
        }.cornerRadius(30).padding() 
    }
}

struct TodayView_Preview: PreviewProvider{
    static var previews: some View {
        TodayView()

    }
}

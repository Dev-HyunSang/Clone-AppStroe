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
                }.padding([.leading, .trailing, .top])
                HighlightView(catagory: "Puppy", title: "You know you want him", message: "Isn't a dog everyone's favorite friend").frame(height: 500, alignment: .leading)
                HighlightView(catagory: "Puppy", title: "You know you want him", message: "Isn't a dog everyone's favorite friend").frame(height: 500, alignment: .leading)
                HighlightView(catagory: "Puppy", title: "You know you want him", message: "Isn't a dog everyone's favorite friend").frame(height: 500, alignment: .leading)
            }
        }
    }
    func loadProfile() {

    }
}

struct HighlightView: View {
    var catagory : String
    var title: String
    var message: String
    
    var body: some View {
        VStack {
            ZStack {
                Image("puppy").resizable()
                LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading) {
                    Text(catagory).foregroundColor(Color.white.opacity(0.5)).bold()
                    Text(title).foregroundColor(.white).font(Font.title).bold()
                    Spacer()
                    Text(message).foregroundColor(.white)
                }.padding()
            }
        }.cornerRadius(30).padding().shadow(radius: 4)
    }
}

struct TodayView_Preview: PreviewProvider{
    static var previews: some View {
        TodayView()

    }
}

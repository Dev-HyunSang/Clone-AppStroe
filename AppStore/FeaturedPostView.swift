//
//  FeaturedPostView.swift
//  AppStore
//
//  Created by HyunSang Park on 2021/10/27.
//

import Foundation
import SwiftUI

struct FeaturedPostView : View {
    var captionText: String
    var titleText: String
    var subtitleText: String
    var image : String
    var body: some View {
        VStack(alignment: .leading) {
            Text(captionText).font(.caption).foregroundColor(.blue)
            Text(titleText)
            Text(subtitleText).font(.subheadline).foregroundColor(.gray)
            Image("sims").resizable().frame(width: (UIApplication.shared.windows.first?.frame.width ?? 0) - 40, height: 230, alignment: .center).cornerRadius(5)
        }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(10)
    }
}

struct FeaturedPost_Preview: PreviewProvider {
    static var previews: some View {
        FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bounjour form Pairs", image: "originl")
    }
}


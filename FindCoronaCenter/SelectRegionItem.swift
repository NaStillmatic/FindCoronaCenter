//
//  SelectRegionItem.swift
//  FindCoronaCenter
//
//  Created by HwangByungJo  on 2022/07/25.
//

import SwiftUI

struct SelectRegionItem: View {
  var region: Center.Sido
  var count: Int
  
  var body: some View {
    ZStack {
      Color(white: 0.9)
      VStack {
        Text(region.rawValue)
          .font(.title)
          .fontWeight(.bold)
          .foregroundColor(.purple)
        Text("\(count)")
          .font(.callout)
          .fontWeight(.light)
          .foregroundColor(.gray)
      }
      .padding()
    }
    .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}

struct SelectRegionItem_Previews: PreviewProvider {
  static var previews: some View {
    let region0 = Center.Sido.강원도
    SelectRegionItem(region: region0, count: 3)
  }
}

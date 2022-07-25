//
//  CenterDetailview.swift
//  FindCoronaCenter
//
//  Created by HwangByungJo  on 2022/07/26.
//

import SwiftUI

struct CenterDetailview: View {
  
  var center: Center
  
    var body: some View {
      VStack {
        MapView(coordination: center.coordinate)
          .ignoresSafeArea(edges: .all)
          .frame(maxWidth: .infinity,
                 maxHeight: .infinity)
        CenterRow(center: center)
      }
      .navigationTitle(center.facilityName)
      .navigationBarTitleDisplayMode(.inline)
    }
}

struct CenterDetailview_Previews: PreviewProvider {
    static var previews: some View {
      let center0 = Center(id: 0,
                           sido: .경기도,
                           facilityName: "실내빙상장앞",
                           address: "경기도 안양시 동안구 평촌대로 389",
                           lat: "37.404476",
                           lng: "126.9491998",
                           centerType: .local,
                           phoneNumber: "031-8045-4843")
      CenterDetailview(center: center0)
    }
}

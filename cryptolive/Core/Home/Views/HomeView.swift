//
//  HomeView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        // top movers view
        TopMoversView()
          .padding(.vertical)

        Divider()

        // all coins view
        AllCoinsView()
      }
      .navigationTitle("Live Prices")
    }
  }
}

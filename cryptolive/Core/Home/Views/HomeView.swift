//
//  HomeView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

struct HomeView: View {
  @StateObject var viewModel = HomeViewModel()

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        // top movers view
        TopMoversView(viewModel: viewModel)
          .padding(.vertical)

        Divider()

        // all coins view
        AllCoinsView(viewModel: viewModel)
      }
      .navigationTitle("Live Prices")
    }
  }
}

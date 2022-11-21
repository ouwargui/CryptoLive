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
      if viewModel.coins.isEmpty {
        ProgressView {
          Text("Fetching coin data")
        }
      } else {
        ScrollView(.vertical, showsIndicators: false) {
          // top movers view
          TopMoversView(viewModel: viewModel)
            .padding(.vertical)

          Divider()

          // all coins view
          AllCoinsView(viewModel: viewModel)
        }
        .navigationTitle("Live Prices")
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button {
              Task {
                await viewModel.fetchCoinData()
              }
            } label: {
              Text("Refresh")
            }
          }
        }
        .refreshable {
          await viewModel.fetchCoinData()
        }
      }
    }
  }
}

//
//  TopMoversView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

struct TopMoversView: View {
  @StateObject var viewModel: HomeViewModel

  var body: some View {
    VStack(alignment: .leading) {
      Text("Top Movers")
        .font(.headline)
        .padding(.horizontal)

      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 16) {
          ForEach(viewModel.topMovingCoins) { coin in
            TopMoversItemView(coin: coin)
          }
        }
        .padding(.horizontal)
      }
    }
  }
}

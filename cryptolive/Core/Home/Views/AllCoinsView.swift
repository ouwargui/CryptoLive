//
//  AllCoinsView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

struct AllCoinsView: View {
  @StateObject var viewModel: HomeViewModel

  var body: some View {
    VStack(alignment: .leading) {
      Text("All Coins")
        .font(.headline)
        .padding()

      HStack {
        Text("Coin")

        Spacer()

        Text("Prices")
      }
      .foregroundColor(.gray)
      .font(.caption)
      .padding(.horizontal)

      ScrollView {
        ForEach(viewModel.coins) { coin in
          CoinRowView(coin: coin)
        }
      }
    }
  }
}

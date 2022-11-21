//
//  CoinRowView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import Kingfisher
import SwiftUI

struct CoinRowView: View {
  let coin: Coin

  var body: some View {
    HStack {
      // number
      Text("\(coin.marketCapRank ?? 1)")
        .font(.caption)
        .foregroundColor(.gray)

      // image
      KFImage(URL(string: coin.image))
        .resizable()
        .scaledToFit()
        .frame(width: 32, height: 32)
        .foregroundColor(.orange)

      // coin info
      VStack(alignment: .leading) {
        Text(coin.name)
          .font(.subheadline)
          .fontWeight(.semibold)

        Text(coin.symbol.uppercased())
          .font(.caption)
      }

      Spacer()

      // coin value
      VStack(alignment: .trailing) {
        Text(coin.currentPrice.toCurrency())
          .font(.subheadline)
          .fontWeight(.semibold)

        Text(coin.priceChangePercentage24H.toPercentage())
          .font(.caption)
          .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
      }
    }
    .padding(.horizontal)
    .padding(.vertical, 4)
  }
}

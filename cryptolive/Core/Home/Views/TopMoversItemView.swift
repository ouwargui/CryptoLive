//
//  TopMoversItemView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import Kingfisher
import SwiftUI

struct TopMoversItemView: View {
  let coin: Coin

  var body: some View {
    VStack {
      HStack {
        // image
        KFImage(URL(string: coin.image))
          .resizable()
          .frame(width: 32, height: 32)
          .foregroundColor(.orange)
        // coin info
        VStack(alignment: .leading) {
          Text(coin.symbol.uppercased())
            .font(.caption)
            .fontWeight(.bold)
          Text(coin.currentPrice.toCurrency())
            .font(.caption)
            .foregroundColor(.gray)
        }
      }

      // coin percent change
      Text(coin.priceChangePercentage24H.toPercentage())
        .font(.title)
        .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
    }
    .frame(width: 140, height: 140)
    .overlay(
      RoundedRectangle(cornerRadius: 10)
        .stroke(Color(.systemGray4), lineWidth: 2)
    )
  }
}

//
//  TopMoversItemView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

struct TopMoversItemView: View {
  let coin: Coin

  var body: some View {
    VStack {
      HStack {
        // image
        Image(systemName: "bitcoinsign.circle.fill")
          .resizable()
          .frame(width: 32, height: 32)
          .foregroundColor(.orange)
        // coin info
        VStack(alignment: .leading) {
          Text(coin.symbol.uppercased())
            .font(.caption)
            .fontWeight(.bold)
          Text("\(coin.currentPrice)")
            .font(.caption)
            .foregroundColor(.gray)
        }
      }

      // coin percent change
      Text("\(coin.priceChangePercentage24H)")
        .font(.title)
        .foregroundColor(.green)
    }
    .frame(width: 140, height: 140)
    .overlay(
      RoundedRectangle(cornerRadius: 10)
        .stroke(Color(.systemGray4), lineWidth: 2)
    )
  }
}

//
//  CoinRowView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

struct CoinRowView: View {
  var body: some View {
    HStack {
      // number
      Text("1")
        .font(.caption)
        .foregroundColor(.gray)

      // image
      Image(systemName: "bitcoinsign.circle.fill")
        .resizable()
        .scaledToFit()
        .frame(width: 32, height: 32)
        .foregroundColor(.orange)

      // coin info
      VStack(alignment: .leading) {
        Text("Bitcoin")
          .font(.subheadline)
          .fontWeight(.semibold)

        Text("BTC")
          .font(.caption)
      }

      Spacer()

      // coin value
      VStack(alignment: .trailing) {
        Text("$20.330,00")
          .font(.subheadline)
          .fontWeight(.semibold)

        Text("-5.60%")
          .font(.caption)
          .foregroundColor(.red)
      }
    }
    .padding(.horizontal)
    .padding(.vertical, 4)
  }
}

struct CoinRowView_Previews: PreviewProvider {
  static var previews: some View {
    CoinRowView()
  }
}

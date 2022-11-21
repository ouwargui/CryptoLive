//
//  AllCoinsView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

struct AllCoinsView: View {
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
        ForEach(0 ..< 50, id: \.self) { _ in
          CoinRowView()
        }
      }
    }
  }
}

struct AllCoinsView_Previews: PreviewProvider {
  static var previews: some View {
    AllCoinsView()
  }
}

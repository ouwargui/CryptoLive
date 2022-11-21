//
//  TopMoversItemView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

struct TopMoversItemView: View {
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
          Text("BTC")
            .font(.caption)
            .fontWeight(.bold)
          Text("$20.300,00")
            .font(.caption)
            .foregroundColor(.gray)
        }
      }

      // coin percent change
      Text("+ 5.60%")
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

struct TopMoversItemView_Previews: PreviewProvider {
  static var previews: some View {
    TopMoversItemView()
  }
}
//
//  TopMoversView.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

struct TopMoversView: View {
  var body: some View {
    VStack(alignment: .leading) {
      Text("Top Movers")
        .font(.headline)
        .padding(.horizontal)

      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 16) {
          ForEach(0 ..< 5, id: \.self) { _ in
            TopMoversItemView()
          }
        }
        .padding(.horizontal)
      }
    }
  }
}

struct TopMoversView_Previews: PreviewProvider {
  static var previews: some View {
    TopMoversView()
  }
}

//
//  HomeViewModel.swift
//  cryptolive
//
//  Created by Guilherme Santos on 21/11/22.
//

import SwiftUI

@MainActor
class HomeViewModel: ObservableObject {
  @Published var coins = [Coin]()
  @Published var topMovingCoins = [Coin]()

  init() {
    Task {
      await fetchCoinData()
    }
  }

  func configureTopMovingCoins() {
    let topMovers = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H })
    topMovingCoins = Array(topMovers.prefix(5))
  }

  func fetchCoinData() async {
    print("DEBUG: Fetching coin data...")

    let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h"

    guard let url = URL(string: urlString) else { return }

    do {
      let (data, _) = try await URLSession.shared.data(from: url)
      let coins = try JSONDecoder().decode([Coin].self, from: data)
      self.coins = coins
      configureTopMovingCoins()
      print("DEBUG: Coin data fetched!")
    } catch {
      print("DEBUG: Error \(error.localizedDescription)")
    }
  }
}

//
//  PreviewProvider.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 16/4/25.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    private init() {}
    
    let coin = CoinModel(id: "medhicoin", symbol: "btc", name: "MehdiCoin", image: "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400", currentPrice: 77315, marketCap: 1533661948351, marketCapRank: 1, fullyDilutedValuation: 1533661948351, totalVolume: 58041691556, high24H: 80109, low24H: 74773, priceChange24H: -1813.7567993038683, priceChangePercentage24H: -2.29216, marketCapChange24H: -35872828375.38208, marketCapChangePercentage24H: -2.28557, circulatingSupply: 19848690, totalSupply: 19848690, maxSupply: 21000000, ath: 108786, athChangePercentage: -28.98655, athDate: "2025-01-20T09:11:54.494Z", atl: 67.81, atlChangePercentage: 113826.40961, atlDate: "2013-07-06T00:00:00.000Z", lastUpdated: "2025-04-09T09:10:45.863Z", sparklineIn7D: SparklineIn7D(
        price: [
          84083.22112364328,
          84126.51474147492
        ]
      ), currentHoldings: 1)
}

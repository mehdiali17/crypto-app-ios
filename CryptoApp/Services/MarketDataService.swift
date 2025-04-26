//
//  MarketDataService.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 26/4/25.
//

import Foundation
import Combine

class MarketDataService {
    @Published var marketData: MarketDataModel? = nil
    
    var marketSubscription: AnyCancellable?
    
    init() {
        getMarketData()
    }
    
    private func getMarketData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketSubscription = NetworkingManager.download(url: url)
            .decode(type: GolbalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedData) in
                self?.marketData = returnedData.data
                self?.marketSubscription?.cancel()
            })
    }
}

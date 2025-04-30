//
//  PortfolioView.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 28/4/25.
//

import SwiftUI

struct PortfolioView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @State private var selectedCoin: CoinModel? = nil
    @State private var quantityText: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    SearchBarView(searchText: $vm.searchText)
                    CoinLogoList
                    
                    if selectedCoin != nil {
                        VStack (spacing: 20) {
                            HStack {
                                Text("Current Price of \(selectedCoin?.symbol.uppercased() ?? ""):")
                                Spacer()
                                Text("\(selectedCoin?.currentPrice.asCurrencyWith2Decimals() ?? "$0.00")")
                            }
                            Divider()
                            HStack {
                                Text("Amount in your Portfolio:")
                                Spacer()
                                TextField("Eg. 6.89", text: $quantityText)
                                    .multilineTextAlignment(.trailing)
                                    .keyboardType(.decimalPad)
                            }
                            Divider()
                            HStack {
                                Text("Current Value")
                                Spacer()
                                Text("\(getCurrentValue().asCurrencyWith2Decimals())")
                                    .multilineTextAlignment(.trailing)
                            }
                            .padding()
                            .font(.headline)
                        }
                    }
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .environmentObject(dev.homeVM)
    }
}

extension PortfolioView {
    private var CoinLogoList: some View {
        ScrollView(.horizontal, showsIndicators:  false) {
            LazyHStack(spacing: 10) {
                ForEach(vm.allCoins) { coin in
                    CoinLogoView(coin: coin)
                        .frame(width: 75)
                        .padding(4)
                        .onTapGesture {
                            withAnimation(.easeIn) {
                                selectedCoin = coin
                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(
                                    selectedCoin?.id == coin.id ? Color.theme.green : Color.clear,
                                    lineWidth: 1
                                )
                        )
                }
            }
            .frame(height: 120)
            .padding(.leading)
        }
    }
    
    func getCurrentValue() -> Double {
        if let quantity = Double(quantityText) {
            return quantity * (selectedCoin?.currentPrice ?? 0.00)
        }
        return 0.00
    }
}



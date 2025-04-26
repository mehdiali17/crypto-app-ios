//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 26/4/25.
//

import Foundation

// Global Coin Data JSON

/*
URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
 "data": {
 "active_cryptocurrencies": 16990,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 1290,
 "total_market_cap": {
 "btc": 32502150.864294376,
 "eth": 1704607977.5742698,
 "ltc": 35108471238.14153,
 "bch": 8285579682.610993,
 "bnb": 5090945427.643932,
 "eos": 4312815882572.6855,
 "xrp": 1383470433609.4565,
 "xlm": 10415043293057.646,
 "link": 203085578423.56787,
 "dot": 713552414348.2585,
 "yfi": 566365699.020623,
 "usd": 3077401941291.142,
 "aed": 11303297330362.365,
 "ars": 3581126170311185.5,
 "aud": 4801670248996.569,
 "bdt": 373889610498584.7,
 "bhd": 1159820475839.6294,
 "bmd": 3077401941291.142,
 "brl": 17511648006723.117,
 "cad": 4273434205773.943,
 "chf": 2548513488856.964,
 "clp": 2877216945010153.5,
 "cny": 22427182127547.457,
 "czk": 67635450683292.78,
 "dkk": 20215761092535.64,
 "eur": 2697958281929.9443,
 "gbp": 2311578158593.076,
 "gel": 8424387814284.5,
 "hkd": 23876792311992.65,
 "huf": 1098478622943873.1,
 "idr": 51712678171630600,
 "ils": 11152596957297.338,
 "inr": 262763195406658.84,
 "jpy": 442145605250385.75,
 "krw": 4426421913225069.5,
 "kwd": 943977658481.3512,
 "lkr": 922078500056292.5,
 "mmk": 6456389272828814,
 "mxn": 60019954891874.72,
 "myr": 13460556091207.453,
 "ngn": 4950924243149188,
 "nok": 32120075022032.168,
 "nzd": 5158233424924.266,
 "php": 173088469110518.38,
 "pkr": 864596075405746.2,
 "pln": 11568723247798.727,
 "rub": 253602782292673.8,
 "sar": 11543143882862.713,
 "sek": 29801868139657.55,
 "sgd": 4043952343011.8623,
 "thb": 103123723665656.47,
 "try": 118239324985301.94,
 "twd": 100172507513566.02,
 "uah": 128693573274865.97,
 "vef": 308140256381.48206,
 "vnd": 80078114528259790,
 "zar": 57512164662906.87,
 "xdr": 2212519667504.856,
 "xag": 92974282806.17151,
 "xau": 927344300.9886725,
 "bits": 32502150864294.375,
 "sats": 3250215086429437.5
 },
 "total_volume": {
 "btc": 1189097.091254596,
 "eth": 62363392.38981465,
 "ltc": 1284449795.3989813,
 "bch": 303129437.2205483,
 "bnb": 186253162.90675306,
 "eos": 157785152204.11523,
 "xrp": 50614517030.2856,
 "xlm": 381036250086.165,
 "link": 7429922763.804278,
 "dot": 26105444648.936127,
 "yfi": 20720591.941859465,
 "usd": 112587308830.3994,
 "aed": 413533185334.057,
 "ars": 131016151217572.33,
 "aud": 175669977968.0722,
 "bdt": 13678819292620.773,
 "bhd": 42432242713.927414,
 "bmd": 112587308830.3994,
 "brl": 640666822168.5049,
 "cad": 156344366407.33408,
 "chf": 93237828760.1893,
 "clp": 105263504390981.92,
 "cny": 820502530563.3018,
 "czk": 2474455244792.7095,
 "dkk": 739597290437.7766,
 "eur": 98705293651.61116,
 "gbp": 84569506678.7192,
 "gel": 308207757923.2183,
 "hkd": 873536782387.8613,
 "huf": 40188039887011.06,
 "idr": 1891917721126052.8,
 "ils": 408019784820.6323,
 "inr": 9613239217656.445,
 "jpy": 16175977254840.996,
 "krw": 161941449464618.47,
 "kwd": 34535594047.180855,
 "lkr": 33734409359653.99,
 "mmk": 236208173926177.88,
 "mxn": 2195840948408.2532,
 "myr": 492456888824.1669,
 "ngn": 181130462446346.5,
 "nok": 1175118777186.411,
 "nzd": 188714906505.70636,
 "php": 6332473072578.506,
 "pkr": 31631404415900.707,
 "pln": 423243840720.67896,
 "rub": 9278103840492.951,
 "sar": 422308015009.6806,
 "sek": 1090306757444.471,
 "sgd": 147948730787.8512,
 "thb": 3772800155970.1396,
 "try": 4325807175007.1484,
 "twd": 3664829377151.0215,
 "uah": 4708277747009.516,
 "vef": 11273367233.187893,
 "vnd": 2929672360954791.5,
 "zar": 2104092987505.8164,
 "xdr": 80945433794.77747,
 "xag": 3401481019.145497,
 "xau": 33927059.64295255,
 "bits": 1189097091254.596,
 "sats": 118909709125459.6
 },
 "market_cap_percentage": {
 "btc": 61.09236918782939,
 "eth": 7.081777432778509,
 "usdt": 4.746527813472144,
 "xrp": 4.2210153288657,
 "bnb": 2.86489787537722,
 "sol": 2.553381599793746,
 "usdc": 2.0255751252671543,
 "doge": 0.9056834269481892,
 "ada": 0.851769597944837,
 "trx": 0.7588050491249572
 },
 "market_cap_change_percentage_24h_usd": -0.5688482288973673,
 "updated_at": 1745651520
 }
 }
*/

struct GolbalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { (key, value) in
            return key == "usd"
        }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { (key, value) in
            return key == "usd"
        }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { (key, value) in
            return key == "btc"
        }) {
            return item.value.asPercentString()
        }
        return ""
    }
}

//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 9/4/25.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
            .environmentObject(vm)
        }
    }
}

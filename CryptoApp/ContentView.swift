//
//  ContentView.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 9/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack (spacing: 40) {
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                Text("Green Color")
                    .foregroundColor(Color.theme.green)
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
                Text("Secondary Text Color")
                    .foregroundColor(Color.theme.secondaryText)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

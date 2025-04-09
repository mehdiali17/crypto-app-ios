//
//  Color.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 9/4/25.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
    static let launch = ColorLaunch()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct ColorLaunch {
    let launch = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}

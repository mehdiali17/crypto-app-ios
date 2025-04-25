//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 25/4/25.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing () {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

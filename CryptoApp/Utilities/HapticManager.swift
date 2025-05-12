//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 12/5/25.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let genertor =  UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        genertor.notificationOccurred(type)
    }
}

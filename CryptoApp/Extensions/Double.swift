//
//  Double.swift
//  CryptoApp
//
//  Created by Mehdi Ali on 18/4/25.
//

import Foundation

extension Double {
    
    /// Converts a Double into currency with 2 decimal places
    /// ```
    /// Convert 1234.56 to $1,234.56
    /// Convert 1234.5678912 to $1,234.57
    /// Convert 1234.5 to $1,234.50
    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        
        return formatter
    }
    
    /// Converts a Double into currency with 2 decimal places & returns a String.
    /// ```
    /// Convert 1234.56 to "$1,234.56"
    /// Convert 1234.5678912 to "$1,234.57"
    /// Convert 1234.5 to "$1,234.50"
    /// ```
    func asCurrencyWith2Decimals() -> String {
        
        let number = NSNumber(value: self)
        
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Converts a Double into currency between 2-6 decimal places
    /// ```
    /// Convert 1234.56 to $1,234.56
    /// Convert 1234.5678912 to $1,234.567891
    /// Convert 1234.5 to $1,234.50
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        
        return formatter
    }
    
    /// Converts a Double into currency between 2-6 decimal places & returns a String.
    /// ```
    /// Convert 1234.56 to "$1,234.56"
    /// Convert 1234.5678912 to "$1,234.567891"
    /// Convert 1234.5 to "$1,234.50"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        
        let number = NSNumber(value: self)
        
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }

    /// Converts a Double into string with 2 decimal places.
    /// ```
    /// Convert 1234.56 to "1234.56"
    /// Convert 1234.5678912 to "1234.57"
    /// Convert 1234.5 to "1234.50"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Converts a Double into string with 2 decimal places and adds a % sign.
    /// ```
    /// Convert 1234.56 to "1234.56%"
    /// Convert 1234.5678912 to "1234.57%"
    /// Convert 1234.5 to "1234.50%"
    /// ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}

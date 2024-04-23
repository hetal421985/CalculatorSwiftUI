//
//  ArithmeticOperation.swift
//  CalculatorSwiftUI
//
//  Created by Hetal Mehta on 23/04/24.
//

import Foundation

enum ArithmeticOperation: CustomStringConvertible {
    
    /// Arithmetic Operation Option
    case addition, subtraction, multiplication, division, equal
    
    var description: String {
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "−"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        case .equal:
            return "="
        }
    }
}

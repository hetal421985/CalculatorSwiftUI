//
//  CalculatorData.swift
//  CalculatorSwiftUI
//
//  Created by Hetal Mehta on 23/04/24.
//

import Foundation
import SwiftUI

final class CalculatorData {
    
    /// Create Shared Object
    static let sharedInstance = CalculatorData()
    
    private init(){}
    
    /*
     Following Method Will Return Two Dimenstional Array For Calculator View With Forground,Background Option
     */
    internal func getDataForCalculatorView() -> [[ButtonType]] {
        
        return [
            
            /// Digit 7,8,9 Operation Multiplication
            [ButtonType(id: Digit.seven.rawValue, name: "\(Digit.seven.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: Digit.eight.rawValue, name: "\(Digit.eight.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: Digit.nine.rawValue, name: "\(Digit.nine.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: 13, name: ArithmeticOperation.multiplication.description, foregroundColor: .white, backgroundColor: Color(.orange))],
            
            /// Digit 4,5,6 Operation Substracation
            [ButtonType(id: Digit.four.rawValue, name: "\( Digit.four.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: Digit.five.rawValue, name: "\(Digit.five.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: Digit.six.rawValue, name: "\(Digit.six.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: 12, name: ArithmeticOperation.subtraction.description, foregroundColor: .white, backgroundColor: Color(.orange))],
            
            /// Digit 1,2,3 Operation Addition
            [ButtonType(id: Digit.one.rawValue, name: "\(Digit.one.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: Digit.two.rawValue, name: "\(Digit.two.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: Digit.three.rawValue, name: "\(Digit.three.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: 11, name: ArithmeticOperation.addition.description, foregroundColor: .white, backgroundColor: Color(.orange))],
            
            /// 0,AC,= Operation Division
            [ButtonType(id: Digit.zero.rawValue, name: "\(Digit.zero.rawValue)", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: Digit.ten.rawValue, name: "AC", foregroundColor: .white, backgroundColor: Color(.lightGray)),ButtonType(id: 15, name: ArithmeticOperation.equal.description, foregroundColor: .white, backgroundColor: Color(.orange)),ButtonType(id: 14, name: ArithmeticOperation.division.description, foregroundColor: .white, backgroundColor: Color(.orange))]
           ]
    }
}

//
//  ButtonType.swift
//  CalculatorSwiftUI
//
//  Created by Hetal Mehta on 23/04/24.
//

import Foundation
import SwiftUI

struct ButtonType: Identifiable,Hashable {
    
    /// Unique Identifier
    var id: Int
    ///  Name
    var name: String
    /// Foreground Color
    var foregroundColor: Color
    ///  Backgroud Color
    var backgroundColor: Color
}

//
//  CalculatorView.swift
//  CalculatorSwiftUI
//
//  Created by Hetal Mehta on 23/04/24.
//

import SwiftUI

struct CalculatorView: View {

    /// Will Get Data From View Model To
    /// Display Calculator Option
    private let buttonRow:[[ButtonType]] = CalculatorData.sharedInstance.getDataForCalculatorView()
 
    /// Final Result String
    @State var resultString: String = "0"
    
    /// Operation Performed
    @State var operationPerformed: Bool = false
    
    /// Equal Button Pressed
    @State var equalPressed: Bool = false
    
    /// Equation
    @State var equation: String = ""
    
    var body: some View {
        VStack {
            /// Top Space
            Spacer()
            /// Result View Will Display Final Data
            ResultView(resultString: $resultString)
            ///  Button View Will Display All Number and Arithmatic Option
            VStack {
                ForEach(buttonRow, id: \.self) { row in
                    HStack(spacing: Constants.padding) {
                        ForEach(row, id: \.self) { buttonType in
                            ButtonView(buttonType: buttonType, callback:calculateResult)
                        }
                    }
                }
            }
        }
        .padding(Constants.padding)
        .background(.black)
    }
    
    /*
     This Function Will Calculate Final Result
     */
    fileprivate func calculateResult(id: Int) {
      
        switch id {
        case 10:
            /// All Clear
            equation = ""
            resultString = "0"
        case 11:
            /// Addition
            equation = equation + resultString + "+"
            operationPerformed = true
        case 12:
            /// Substraction
            equation = equation + resultString + "-"
            operationPerformed = true
        case 13:
            /// Multiplication
            equation = equation + resultString + "*"
            operationPerformed = true
        case 14:
            /// Division
            equation = equation + resultString + "/"
            operationPerformed = true
        case 15:
            /// Equal
            equation = equation.appending(resultString)
            let expr = NSExpression(format: equation)
            if let result = expr.expressionValue(with: nil, context: nil) as? Double {
                resultString = "\(Int(result))"
                equation = ""
                operationPerformed = false
                equalPressed = true
            }
        default:
            /// Restore  Result String To "0"
            if equalPressed || operationPerformed{
                equalPressed = false
                operationPerformed = false
                resultString = "0"
            }
            /// Number From 0 to 9
            if resultString != "0" {
                resultString = resultString.appending("\(id)")
            } else {
                resultString = "\(id)"
            }
        }
    }
}

#Preview {
    CalculatorView()
}

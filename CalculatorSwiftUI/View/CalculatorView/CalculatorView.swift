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
        CalculatorData.sharedInstance.getCalculatedResult(id: id)
        resultString = CalculatorData.sharedInstance.resultString
    }
    
}

#Preview {
    CalculatorView()
}

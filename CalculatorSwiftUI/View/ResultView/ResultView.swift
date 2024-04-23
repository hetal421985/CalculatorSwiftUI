//
//  ResultView.swift
//  CalculatorSwiftUI
//
//  Created by Hetal Mehta on 23/04/24.
//

import SwiftUI

struct ResultView: View {
    /// Display Final Result
    @Binding var resultString: String
    
    var body: some View {
        Text(resultString)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
}

#Preview {
    ResultView(resultString: .constant("0"))
}

//
//  ButtonView.swift
//  CalculatorSwiftUI
//
//  Created by Hetal Mehta on 23/04/24.
//

import SwiftUI

struct ButtonView: View {
    
    var buttonType: ButtonType
    
    /// Button Action Call Back
    let callback: (Int)->()
    
    var body: some View {
    
        Button {
            /// Call Back Will Get On Parent View To
            /// Identify Which Button Is Pressed
            callback(buttonType.id)
        } label: {
            Text(buttonType.name)
             .padding()
             .frame(width: getButtonSize(),height: getButtonSize())
             .background(buttonType.backgroundColor)
            
             .font(.system(size: 32, weight: .medium))
            .foregroundColor(buttonType.foregroundColor)
            .overlay(
             RoundedRectangle(cornerRadius: getButtonSize())
              .stroke(Color.clear, lineWidth: 1)
            )
        }
        .cornerRadius(getButtonSize())
    }
    
    /*
     This Function will return Height and Width
     according to screen width
     */
    private func getButtonSize() -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        let buttonCount: CGFloat = 4
        let spacingCount = buttonCount + 1
        return (screenWidth - (spacingCount * Constants.padding)) / buttonCount
    }
}

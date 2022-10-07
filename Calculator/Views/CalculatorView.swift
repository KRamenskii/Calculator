//
//  CalculatorView.swift
//  Calculator
//
//  Created by Кирилл Раменский on 07.10.2022.
//

import SwiftUI

// MARK: - BODY

struct CalculatorView: View {
    
    var buttonTypes: [[ButtonType]] {
        [[.allClear, .negative, .percent, .operation(.division)],
         [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiplication)],
         [.digit(.four), .digit(.five), .digit(.six), .operation(.subtraction)],
         [.digit(.one), .digit(.two), .digit(.three), .operation(.addition)],
         [.digit(.zero), .decimal, .equals]]
    }
    
    var body: some View {
        VStack {
            Spacer()
            displayText
            buttonPad
        }
        .background(Color.black)
    }
}

// MARK: - PREVIEWS

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}

// MARK: - COMPONENTS

extension CalculatorView {
    
    private var displayText: some View {
        Text("0")
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    
    private var buttonPad: some View {
        VStack {
            ForEach(buttonTypes, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { buttonType in
                        Button(buttonType.description) { }
                            .buttonStyle(CalculatorButtonStyle(
                                size: 80,
                                backgroundColor: buttonType.backgroundColor,
                                foregroundColor: buttonType.foregroundColor)
                            )
                    }
                }
            }
        }
    }
}
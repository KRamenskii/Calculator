//
//  Digit.swift
//  Calculator
//
//  Created by Кирилл Раменский on 07.10.2022.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}

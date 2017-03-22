//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Brian Marshall on 3/20/17.
//  Copyright © 2017 Brian Marshall. All rights reserved.
//

import Foundation

class CalculatorModel {

    var operandOne: Int!
    var operandTwo: Int!

    func add(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return operandOne + operandTwo
    }

    func sub(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return operandOne - operandTwo
    }

    func mul(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return operandOne * operandTwo
    }

    func div(_ operandOne: Int, _ operandTwo: Int) -> Int {
        guard operandTwo != 0 else {
            return 0
        }
        return operandOne / operandTwo
    }
}

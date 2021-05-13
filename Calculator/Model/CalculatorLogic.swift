//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Baris Karalar on 12.05.2021.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculateWith (calcMethod: String) -> Double? {
        if let n = number {
            
            switch calcMethod {
            case "+/-":
                return n * -1
            case "%":
                return n / 100
            case "AC":
                return 0.0
            case "=":
                return performTwoNumCalculation(n2: n)
            default:
                intermediateCalculation = (n1: n, calcMethod: calcMethod)
            }
        }
        
        return nil
    }
    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1, let operation = intermediateCalculation?.calcMethod {
            if operation == "+" {
                return n1 + n2
            } else if operation == "-" {
                return n1 - n2
            } else if operation == "x" {
                return n1 * n2
            } else if operation == "÷" {
                return n1 / n2
            }
            
        }
        
        return nil
    }
}

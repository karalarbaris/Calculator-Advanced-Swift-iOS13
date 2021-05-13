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
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculateWith (calcMethod: String) -> Double? {
        if let number = number {
            if calcMethod == "+/-" {
                return number * -1
            } else if calcMethod == "%"{
                return number / 100
            } else if calcMethod == "AC" {
                return 0.0
            }
        }
        
        return nil
    }
}

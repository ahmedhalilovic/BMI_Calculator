//
//  CalculaateBMI.swift
//  BMICalculator
//
//  Created by Ahmed Halilovic on 21. 9. 2024..
//

import UIKit

struct CalculateBMI {
    
    var bmi: BMI?

    // Function is marked as 'mutating' because you cannot change properties of value inside their instance methods. Swift makes types immutable to prevent accidental changes to data
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiVal = weight / pow(height, 2)
        
        if bmiVal < 18.4 {
            bmi = BMI(value: bmiVal, adviceText: "Eat more Fish and Chips", color: #colorLiteral(red: 0.1870352328, green: 0.6720778346, blue: 0.9963062406, alpha: 1))
        } else if bmiVal <= 24.9 {
            bmi = BMI(value: bmiVal, adviceText: "You are Healty & Fit", color:  #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else if bmiVal <= 29.9 {
            bmi = BMI(value: bmiVal, adviceText: "Eat less and control yourself", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        } else {
            bmi = BMI(value: bmiVal, adviceText: "Hit the Gym", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    
    // Getters
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? "0.0")
        
        return bmiString
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
    func getAdvice() -> String {
        return bmi?.adviceText ?? "I have nothing to say!"
    }
}

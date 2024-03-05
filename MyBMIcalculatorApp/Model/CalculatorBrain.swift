//
//  CalculatorBrain.swift
//  MyBMIcalculatorApp
//
//  Created by Павел Широкий on 05.03.2024.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMiValue() -> String {
        let formattedBmiValue = String(format: "%1.f", bmi?.bmiValue ?? 0.0)
        return formattedBmiValue
    }
    
    mutating func claculateMbi(weight: Float, height: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
           bmi = BMI(bmiValue: bmiValue, advice: "Eat mor meat!", color: UIColor.blue )
        } else if bmiValue < 24.9 {
           bmi = BMI(bmiValue: bmiValue, advice: "You are prety good!", color: UIColor.green)
        } else {
           bmi = BMI(bmiValue: bmiValue, advice: "Stop eating!", color: UIColor.systemPink)
        }
    }
    
    func getAdvice() -> String {
        let bmiAdvice = bmi?.advice ?? "i don't know that index"
        return bmiAdvice
    }
    
    func getColor() -> UIColor {
        let uiColor = bmi?.color ?? .gray
        return uiColor
    }
    
}


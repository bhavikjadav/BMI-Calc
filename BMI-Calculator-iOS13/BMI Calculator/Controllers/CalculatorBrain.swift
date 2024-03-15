//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bhavik Jadav on 21/02/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 0.0, green: 255.0, blue: 255.0, alpha: 1))
            print("Underweight")
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: UIColor(red: 0.0, green: 255.0, blue: 0, alpha: 1))
            print("Normal")
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(red: 255.0, green: 0.0, blue: 0, alpha: 1))
            print("Overweight")
        }
    }
    
    func getAdvise() -> String {
        return bmi?.advice ?? "Nil"
    }
    
    func getUIColor() -> UIColor {
        return bmi!.color
    }
    
    mutating func getBMIValue() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
}

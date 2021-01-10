//
//  calculator.swift
//  BMI Calculator
//
//  Created by Ivan Teo on 12/6/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    mutating func calculateBMI(w: Float, h: Float){
        let bmiValue = w/(powf(h,h))
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", colour: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", colour: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", colour: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    func getColor() -> UIColor{
        return bmi?.colour ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)}
    func getAdvice() -> String{
        return bmi?.advice ?? "nil"}
}



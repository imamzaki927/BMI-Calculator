
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmivalue = weight / (height*height)
        if bmivalue < 18.5 {
            bmi = BMI(value: bmivalue, advice: "Eat more pies", color: .blue)
        }
        else if bmivalue > 18.5 && bmivalue < 24.9 {
            bmi = BMI(value: bmivalue, advice: "Feet as a fiddle", color: .green)
        }
        else{
            bmi = BMI(value: bmivalue, advice: "Eat less pies", color: .red)
        }
    }
}

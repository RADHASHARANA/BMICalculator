//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by IIFLUSER on 01/12/21.
//

import UIKit

struct CalculateBrain{
    
    var height : Float = 0.0
    var weight : Float = 0.0
    var bmi : BMI?
    
    mutating func setHeight(_ height:Float){
        self.height = height
    }
    mutating func setWeight(_ weight:Float){
        self.weight = weight
    }
    mutating func calculateBMI(){
        
        let value = (weight/(height*height))
        if(value<18.5){
            bmi = BMI(value: String(format: "%.2f", value), advice: "You are underweight. Eat more food!!!!", color:UIColor.blue)
        }else if(value < 25.0){
            bmi = BMI(value:String(format: "%.2f", value), advice: "You are healthy. Stay healthy and stay fit", color:UIColor.orange)
        }else{
            bmi = BMI(value: String(format: "%.2f", value), advice: "You are overweight. Go for diet and stay fit", color:UIColor.red)
        }
        
    }

    func getColor()->UIColor{
        
        return bmi?.color ?? UIColor.systemIndigo
    }
    func getAdvice()->String{
        
        return bmi?.advice ?? "stay fit"
    }
    func getBMI()->String{
        return bmi?.value ?? "Enter your weight and height"
    }
}

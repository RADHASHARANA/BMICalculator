//
//  BMI.swift
//  BMI Calculator
//
//  Created by IIFLUSER on 01/12/21.
//

import UIKit
struct BMI{
    
    var value: String
    var advice: String
    var color: UIColor
    
    init(value: String, advice: String, color: UIColor){
        self.value = value
        self.advice = advice
        self.color = color
        
    }
}

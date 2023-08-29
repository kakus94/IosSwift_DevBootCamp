//
//  SliderModel.swift
//  BMI Calculator
//
//  Created by Kamil Karpiak on 29/08/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation


struct SliderModel { 
  
  var value: Float 
  
  
  mutating func setValue(_ newValue: Float ) { 
    self.value = newValue
  } 
  
  func getValueString(format: String = "%.0f") -> String { 
    String(format: format, value)
  }
  
}

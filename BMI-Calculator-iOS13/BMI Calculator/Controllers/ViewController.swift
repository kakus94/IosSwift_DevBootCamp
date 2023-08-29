//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  @IBOutlet weak var HeightSliderOutlet: UISlider!  
  @IBOutlet weak var heightLabelOutlet: UILabel!
  
  @IBOutlet weak var weightSliderOutlet: UISlider!  
  @IBOutlet weak var weightLabelOutlet: UILabel!
  
  var wight: SliderModel = .init(value: 0) 
  var height: SliderModel = .init(value: 0)
  
  var bmiValue: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    height.setValue(HeightSliderOutlet.value)
    wight.setValue(weightSliderOutlet.value)
    updateUI()
  }

  @IBAction func sliderChangeValue(_ sender: UISlider) {
    let id = sender.accessibilityLabel!
    if id == "height" { 
      height.setValue(HeightSliderOutlet.value)
    } else { 
      wight.setValue(weightSliderOutlet.value)
    }
    updateUI()
  }
  
  
  @IBAction func calculatePressed(_ sender: UIButton) {
    let bmi = wight.value / (height.value * height.value)
    print("BMI \(bmi)")
    bmiValue = String(format: "%0.1f", bmi)
    self.performSegue(withIdentifier: "goToResult", sender: self)
  }
  
  
  func updateUI() {
    heightLabelOutlet.text = height.getValueString(format: "%.2f m")
    weightLabelOutlet.text = wight.getValueString(format: "%.1f kg")
  }
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" { 
      let destinationVC = segue.destination as! ResultViewController
      destinationVC.bmiValueLabel = bmiValue
    } 
  }

}


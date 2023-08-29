//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Kamil Karpiak on 29/08/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

  @IBOutlet weak var bmiValue: UILabel!  
  @IBOutlet weak var commentBmi: UIImageView!
  
  var bmiValueLabel: String?
  
  override func viewDidLoad() {
        super.viewDidLoad()

    bmiValue.text = bmiValueLabel
    }
    
  @IBAction func Recalculate(_ sender: UIButton) {
    self.dismiss(animated: true)
  }
  
 

}

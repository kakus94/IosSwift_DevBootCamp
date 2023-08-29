//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let eggTime = [ "Soft": 5, "Medium": 7, "Hard": 12 ]   
  var counter = 30
  var setCouter: Int = 10
  var timer: Timer?
  
  var secondsRemaining = 60 
  
  
  @IBOutlet weak var progressView: UIProgressView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBAction func hardnessSelected(_ sender: UIButton) {
    
    let hardness = sender.currentTitle!
    
    timer?.invalidate()
    counter = eggTime[hardness]! * 60
    setCouter = counter
    timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    print(eggTime[hardness] ?? "Error")
    
  }
  
  @objc func updateCounter() {
    //example functionality
    if counter > 0 {
      print("\(counter) seconds ")
      counter -= 1
      
      if counter < secondsRemaining { 
        print("remaining")
        secondsRemaining = 0 
      }
      
      updateProgressBar()
      
    } else { 
      timer?.invalidate()
      titleLabel.text = "DONE !!!"
    }
  }
  
  func updateProgressBar() { 
    progressView.progress = Float(1 - ( Float(counter) / Float(setCouter) ))
  }
  
}

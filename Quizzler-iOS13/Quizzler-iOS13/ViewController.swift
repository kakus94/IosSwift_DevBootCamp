//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  @IBOutlet weak var questionTextOutlet: UILabel!  
  @IBOutlet weak var progressBarOutlet: UIProgressView!  
  @IBOutlet weak var trueButtonOutlet: UIButton!  
  @IBOutlet weak var falseButtonOutlet: UIButton!  
  @IBOutlet weak var scoreLabel: UILabel!
  
  let guiz_2: [QuizItem] = [
    .init("Four + Two is equal to six", "True"),
    .init("Four + one is equal to six", "False"),
    .init("Four + three is equal to six", "False"),
    .init("Four + Two is equal to five", "False")
  ]
  
  
  var questionNumber = 0 
  var score = 0 
  
  override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()
    
    
    }
  
  
  @IBAction func answerButtonPressed(_ sender: UIButton) {
    let label = sender.currentTitle
    
    let result = guiz_2[questionNumber].answer == label
    
    score += result ? 1 : 0    
    sender.backgroundColor = result ? .green : .red
    sender.alpha = 0.2
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
      sender.backgroundColor = .clear
      sender.alpha = 1
    }
    
    if questionNumber + 1 < guiz_2.count {
      questionNumber += 1  
    } else {
      questionNumber = 0       
    }
    
    updateUI()
  }
  
  
  func updateUI() { 
    questionTextOutlet.text = guiz_2[questionNumber].question
    scoreLabel.text = "Score \(score)"
  }
  
  struct QuizItem{ 
    let question: String
    let answer: String 
    
    init(_ question: String, _ answer: String) {
      self.question = question
      self.answer = answer
    }
  }
  
  
}


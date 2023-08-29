//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var diceImageView1: UIImageView!  
  @IBOutlet weak var diceImageView2: UIImageView!  
  @IBOutlet weak var scoreLabel: UILabel!
  
  let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
  
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.    
   
    
    }

  @IBAction func rollButonPressed(_ sender: UIButton) {
    
    let dice1Value = getRandomValueDice(6)
    let dice2Value = getRandomValueDice(6)
    
    diceImageView1.image = getImageByNumer(dice1Value)
    diceImageView2.image = getImageByNumer(dice2Value)
    scoreLabel.text = String(dice1Value + dice2Value)
  }
  
  func getRandomValueDice(_ howWall: Int) -> Int { 
    Int.random(in: 1...howWall)
  }  
  
  func getImageByNumer(_ number: Int) -> UIImage? { 
    let index = number - 1
    
    if index >= 0 && index < diceArray.count { 
      return diceArray[index]
    } 
    
    return nil
  }
  
}


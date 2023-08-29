//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
  
  var storyBrain: StoryBrain = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      updateUI()
      
    }
  
  @IBAction func buttonAction(_ sender: UIButton) {
    storyBrain.choiseMade(sender.currentTitle!)
    updateUI()
  }
  

  func updateUI() {
    storyLabel.text = storyBrain.getTitle()
    choice1Button.setTitle(storyBrain.getChoise1(), for: .normal) 
    choice2Button.setTitle(storyBrain.getChoise2(), for: .normal) 
  }
  

}


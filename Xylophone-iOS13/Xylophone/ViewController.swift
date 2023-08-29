//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

  var player: AVAudioPlayer?
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }


  @IBAction func buttonPressed(_ sender: UIButton) {
    
    sender.alpha = 0.5
    
    let key = sender.titleLabel?.text
    playSound(key!)
    
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
      //Bring's sender's opacity back up to fully opaque.
      sender.alpha = 1.0
    }
    
  }
  
  func playSound(_ key: String ) { 
    let url = Bundle.main.url(forResource: key, withExtension: "wav")
    player = try! .init(contentsOf: url!)
    player?.play()
  }
  

}


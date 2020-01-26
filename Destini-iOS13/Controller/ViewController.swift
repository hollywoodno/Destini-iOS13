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
  
  let story = Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right")
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    storyLabel.text = story.title
  }
  
  @IBAction func choiceMade(_ sender: UIButton) {
    let selected = sender.currentTitle
    
    if selected == "Choice 1" {
      sender.setTitle(story.choice1, for: .normal)
    } else {
      sender.setTitle(story.choice2, for: .normal)
    }
  }
  
}


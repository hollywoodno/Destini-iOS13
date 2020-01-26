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
  
  let stories = [
    Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right"),
    Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
    Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
  ]
  
  var storyNumber = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let currentStory = stories[storyNumber]
    storyLabel.text = currentStory.title
    choice1Button.setTitle(currentStory.choice1, for: .normal)
    choice2Button.setTitle(currentStory.choice2, for: .normal)
  }
  
  @IBAction func choiceMade(_ sender: UIButton) {
    let selected = sender.currentTitle
    
    if selected == stories[storyNumber].choice1 {
      
      storyNumber += 1
      storyLabel.text = stories[storyNumber].title
      
      // update choices to match new story
      choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
      choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    } else {
      storyNumber += 2
      storyLabel.text = stories[storyNumber].title
      
      // update choices to match new story
      choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
      choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    }
  }
}


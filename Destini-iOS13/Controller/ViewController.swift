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
    
    var storyNumber = 0
    var choiceNumber = 0
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        
        storyNumber = example.nextStory(userChoice: userAnswer!)
        choiceNumber = example.nextChoiceNumber(userChoice: userAnswer!)
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }
    
   /*
    let story0 = "You see a fork in the road."
    let choice1 = "Take a left."
    let choice2 = "Take a right."
     */
    var example = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @objc func    updateUI(){
        storyLabel.text = example.storyTitle[storyNumber]
        choice1Button.setTitle(example.choice1[choiceNumber], for: .normal)
        choice2Button.setTitle(example.choice2[choiceNumber], for: .normal)
    }
}


//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story{
    let storyTitle = ["You see a fork in the road.", "You see tiger.", "You find a  treasure chest."]
    let choice1 = ["Take a left.", "Shout for help.", "Open it."]
    let choice2 = ["Take a right.", "Play dead.", "Check for traps."]
    var storyNumber = 0
    
    mutating func checkAnswer(userAnswer: String) -> Int{
        if userAnswer == choice1[0]{
            storyNumber = 1
        }else{
            storyNumber = 2
        }
        return storyNumber
    }
}

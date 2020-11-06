//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let storyTitle = ["Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide-brimmed hat and soulless eyes opens the passenger door for you and says: \("Need a ride, boy?").",
        "He nods slowly, unphased by the question.",
        "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
        "What? Such a cop-out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?",
        "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
        "You bond with the murderer while crooning verses of \("Can you feel the love tonight"). He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \("Try the pier.")"]
    let choice1 = ["I'll hop in. Thanks for the help!",
                   "I love Elton John! Hand him the cassette tape.",
                   "At least he's honest. I'll climb in.",
                   ""]
    let choice2 = ["Well, I don't have many options. Better ask him if he's a murderer",
                   "It’s him or me. Take the knife and stab him.",
                   "Wait, I know how to change a tire.",
                   ""]
    var storyNumber = 0
    var choiceNumber = 0
    
    mutating func nextStory(userChoice: String) -> Int{
           if userChoice == choice1[0]{
               storyNumber = 2
           }else if userChoice == choice1[1]{
               storyNumber = 5
           }else if userChoice == choice2[1]{
               storyNumber = 4
           }else if userChoice == choice2[0]{
               storyNumber = 1
           }else if userChoice == choice2[2]{
               storyNumber = 3
           }
           return storyNumber
       }
    
    mutating func nextChoiceNumber(userChoice: String) -> Int{
        if userChoice == choice1[0]{
            choiceNumber = 1
        }else if userChoice == choice2[0]{
            choiceNumber = 2
        }else if userChoice == choice1[1]{
            choiceNumber = 3
        }
        return choiceNumber
    }
}

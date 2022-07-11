//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
    


var storyNumber = 0
var choice1Destination = 0
var choice2Destination = 0

let Stories = [
    Story(title: "you are sharp.",
        choice1: "Hit Next if yes.",
        choice2: "or Quit game.",choice1Destination: 1,choice2Destination: 2),
    Story(
        title: "I am sharpier then you are.",
        choice1: "Now play me",
        choice2: "or don't play",choice1Destination: 2,choice2Destination: 2
    ),
    Story(
        title: "well played, did you?",
        choice1: "I did rock.",
        choice2: "I didn't play, closing the app. ",choice1Destination: 0,choice2Destination: 0
    )
]

func getStoryTitle() -> String{
    return Stories[storyNumber].title
    
}

func getStoryChoice1() -> String{
    return Stories[storyNumber].choice1
}

func getStoryChoice2() -> String{
    return Stories[storyNumber].choice2
}

mutating func nextStory(userChoice: String){
    let currentStory = Stories[storyNumber]
    if userChoice == currentStory.choice1{
        storyNumber = currentStory.choice1Destination
        
    } else if userChoice == currentStory.choice2{
                storyNumber = currentStory.choice2Destination
}
    
    
    
}
    
}

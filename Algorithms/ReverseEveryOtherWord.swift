//
//  ReverseEveryOtherWord.swift
//  Algorithms
//
//  Created by Darragh on 11/2/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import Foundation

var sampleSentence = "Let's start today by completely a very interesting challenge"

func reverseWordsInSentence(sentence: String) -> String {
    let allWords = sampleSentence.components(separatedBy: " ")
    var newSentence = ""
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        if newSentence != "" {
            newSentence += " "
        }
        
        if index % 2 == 1 {
            let reverseWord = String(word.characters.reversed())
            newSentence += reverseWord.stringByRemovingVowels()
        } else {
            newSentence += word.stringByRemovingVowels()
        }
        
    }
    
    return newSentence
}

extension String {
    func stringByRemovingVowels() -> String {
        var newWord = self
        for vowel in ["a", "e", "i", "o", "u"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        return newWord
    }
}

print(reverseWordsInSentence(sentence: sampleSentence))

















































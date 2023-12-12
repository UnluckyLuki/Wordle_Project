//
//  WordleGameModel.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import Foundation
import SwiftUI

struct WordleGameModel<LetterContent> where LetterContent: Equatable{
    private(set) var word: Array<Letter>
    private(set) var anwser: Array<LetterContent>
    
    public var attempts: Int
    
    init(numberOfLetters: Int, anwserContentFactory: (Int)->
    LetterContent){
        word = []
        anwser = []
        attempts = 0
        for index in 0..<numberOfLetters{
            let wordContent = ""
            let anwserContent = anwserContentFactory(index)
            word.append(Letter(id: index, content: wordContent as! LetterContent))
            anwser.append(anwserContent)
        }
    }
    
    mutating func changeLetter(input: String) {
        word[word.count].content = input as! LetterContent
    }
    
    
    mutating func checkAnwser() {
        for i in 0..<anwser.count{
            if anwser[i] == word[i].content{
                word[i].isCorrect = true
            } else {
                for j in 0..<word.count{
                    if anwser.contains(word[j].content){
                        word[j].isOccurs = true
                    } else {
                        word[j].isWrong = true
                    }
                }
            }
        }
        attempts = attempts + 1
    }
    
    struct Letter : Equatable, Identifiable{
        var id: Int
        
        var isCorrect: Bool = false
        var isOccurs: Bool = false
        var isWrong: Bool = false
        var content: LetterContent
    }
}

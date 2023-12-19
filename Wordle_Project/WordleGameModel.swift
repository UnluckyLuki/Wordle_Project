//
//  WordleGameModel.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import Foundation
import SwiftUI

struct WordleGameModel<LetterContent> where LetterContent: Equatable{
    private(set) var rows: Array<Row>
    private(set) var word: Array<Letter>
    private(set) var anwser: Array<LetterContent>
    public var iterator: Int
    public var attempts: Int
    
    init(numberOfLetters: Int, anwserContentFactory: (Int)->
    LetterContent){
        word = []
        anwser = []
        rows = []
        attempts = 0
        iterator = 0
        for index in 0..<numberOfLetters{
            let wordContent = ""
            let anwserContent = anwserContentFactory(index)
            word.append(Letter(id: index, content: wordContent as! LetterContent))
            anwser.append(anwserContent)
        }
        rows.append(Row(id: attempts, Letters: word))
    }
    
    mutating func changeLetter(input: String) {
        rows[attempts].Letters[iterator].content = input as! LetterContent
        iterator = iterator + 1
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
        word = []
        for index in 0..<anwser.count{
            let wordContent = ""
            word.append(Letter(id: index, content: wordContent as! LetterContent))
        }
        rows.append(Row(id: attempts, Letters: word))
    }
    
    struct Letter : Equatable, Identifiable{
        var id: Int
        
        var isCorrect: Bool = false
        var isOccurs: Bool = false
        var isWrong: Bool = false
        var content: LetterContent
    }
    
    struct Row : Equatable, Identifiable{
        var id: Int
        
        var Letters: Array<Letter>
    }
}

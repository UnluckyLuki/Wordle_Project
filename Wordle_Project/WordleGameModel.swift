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
    private(set) var answer: Array<LetterContent>
    public var iterator: Int
    public var attempts: Int
    private(set) var wrongLetters: Array<LetterContent>
    init(numberOfLetters: Int, anwserContentFactory: (Int)->
    LetterContent){
        word = []
        answer = []
        rows = []
        wrongLetters = []
        attempts = 0
        iterator = 0
        for index in 0..<numberOfLetters{
            let wordContent = ""
            let anwserContent = anwserContentFactory(index)
            word.append(Letter(id: index, content: wordContent as! LetterContent))
            answer.append(anwserContent)
        }
        rows.append(Row(id: attempts, Letters: word))
    }
    
    mutating func changeLetter(input: String) {
        rows[attempts].Letters[iterator].content = input as! LetterContent
        iterator = iterator + 1
    }
    
    
    mutating func checkAnwser() {
        for i in 0..<answer.count{
            if answer[i] == rows[attempts].Letters[i].content{
                rows[attempts].Letters[i].isCorrect = true
            } else {
                for j in 0..<word.count{
                    if answer.contains(rows[attempts].Letters[j].content){
                        rows[attempts].Letters[j].isOccurs = true
                    } else {
                        rows[attempts].Letters[j].isWrong = true
                        if(!wrongLetters.contains(rows[attempts].Letters[j].content)){
                            wrongLetters.append(rows[attempts].Letters[j].content)
                        }
                    }
                }
            }
        }
        attempts = attempts + 1
        word = []
        for index in 0..<answer.count{
            let wordContent = ""
            word.append(Letter(id: index, content: wordContent as! LetterContent))
        }
        rows.append(Row(id: attempts, Letters: word))
        print(wrongLetters)
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

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
    private(set) var row: Array<Letter>
    private(set) var answer: Array<LetterContent>
    public var iterator: Int
    public var attempts: Int
    private(set) var wordGuessed: Bool
    private(set) var gameOver: Bool
    private(set) var wrongLetters: Array<LetterContent>
    init(numberOfLetters: Int, anwserContentFactory: (Int)->
    LetterContent){
        row = []
        answer = []
        rows = []
        wrongLetters = []
        attempts = 0
        iterator = 0
        wordGuessed = false
        gameOver = false
        for index in 0..<numberOfLetters{
            let wordContent = ""
            let anwserContent = anwserContentFactory(index)
            row.append(Letter(id: index, content: wordContent as! LetterContent))
            answer.append(anwserContent)
        }
        rows.append(Row(id: attempts, Letters: row))
    }
    
    mutating func changeLetter(input: String) {
        rows[attempts].Letters[iterator].content = input as! LetterContent
        iterator = iterator + 1
    }
    
    mutating func deleteLetter(){
        if iterator != 0 {
            rows[attempts].Letters[iterator - 1].content = "" as! LetterContent
            iterator = iterator - 1
        }
    }
    
    mutating func checkAnwser() {

        for i in 0..<answer.count{
            if answer[i] == rows[attempts].Letters[i].content{
                rows[attempts].Letters[i].isCorrect = true
            } else if answer.contains(rows[attempts].Letters[i].content){
                rows[attempts].Letters[i].isOccurs = true
            } else{
                rows[attempts].Letters[i].isWrong = true
                if(!wrongLetters.contains(rows[attempts].Letters[i].content)){
                    wrongLetters.append(rows[attempts].Letters[i].content)
                }
            }
        }
        
        let allCorrect = rows[attempts].Letters.allSatisfy{$0.isCorrect}
        
        if allCorrect{
            wordGuessed = true
        } else{
            if attempts + 1 == answer.count{
                gameOver = true
            }
            if !gameOver{
                attempts = attempts + 1
                row = []
                for index in 0..<answer.count{
                    let wordContent = ""
                    row.append(Letter(id: index, content: wordContent as! LetterContent))
                }
                rows.append(Row(id: attempts, Letters: row))
            }
        }
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

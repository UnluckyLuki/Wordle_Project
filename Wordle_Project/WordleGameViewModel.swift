//
//  WordleGameViewModel.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import Foundation
import SwiftUI

class WordleGameViewModel: ObservableObject {
    
    private var words = [
        ["T", "A", "S", "K"],
        ["W", "O", "R", "D"],
        ["G", "A", "M", "E", "S"],
        ["B", "R", "A", "I", "N"],
        ["L", "E", "T", "T", "E", "R"],
        ["E", "X", "O", "T", "I", "C"]
    ]
    
    private static var word = ["T", "A", "S", "K"]
    
    @Published private var model: WordleGameModel<String> = createGame()
    
    private static func createGame() -> WordleGameModel<String>{
        WordleGameModel(numberOfLetters: word.count){
            index in
            if word.indices.contains(index){
                return word[index]
            }
            return "??"
        }
    }
    var answer : Array<String>{
        return model.answer
    }
    
    var row : Array<WordleGameModel<String>.Letter>{
        return model.word
    }
    var attemps: Int {
        return model.attempts
    }
    
    var rows: Array<WordleGameModel<String>.Row>{
        return model.rows
    }
    
    var wordGuessed: Bool{
        return model.wordGuessed
    }

    func deleteLetter(){
        model.deleteLetter()
    }
    
    var wrongLetters: Array<String>{
        return model.wrongLetters
    }
    func changeLetter(input: String){
        model.changeLetter(input: input)
        if model.answer.count == model.iterator{
            model.checkAnwser()
            model.iterator = 0
        }
    }
    
    func nextWord(){
        WordleGameViewModel.word = words.filter{$0.count == WordleGameViewModel.word.count + 1}.randomElement()!
        model = WordleGameViewModel.createGame()
    }
    
    func reset(){
        WordleGameViewModel.word = words.filter{$0.count == WordleGameViewModel.word.count}.randomElement()!
        model = WordleGameViewModel.createGame()
    }
    
    func playAgain(){
        WordleGameViewModel.word = words.filter{$0.count == 4}.randomElement()!
        model = WordleGameViewModel.createGame()
    }
}

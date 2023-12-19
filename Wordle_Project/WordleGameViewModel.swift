//
//  WordleGameViewModel.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import Foundation
import SwiftUI

class WordleGameViewModel: ObservableObject {
    
    private static var word = ["A", "P", "P", "L", "E"]
    
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
        return model.anwser
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

    func changeLetter(input: String){
        model.changeLetter(input: input)
        if model.anwser.count == model.iterator{
            model.checkAnwser()
            model.iterator = 0
        }
    }
}

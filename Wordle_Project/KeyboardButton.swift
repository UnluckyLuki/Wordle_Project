//
//  KeyboardButton.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct KeyboardButton: View {
    @ObservedObject var viewModel: WordleGameViewModel
    var text: String = ""
    var body: some View {
        Button(text){
            viewModel.changeLetter(input: text)
        }.disabled(viewModel.wrongLetters.contains(text) || viewModel.gameOver || viewModel.wordGuessed)
            .frame(width: 20, height: 20)
            .font(.system(size: 18))
            .padding(5)
            .border(viewModel.wrongLetters.contains(text) ? Color.gray : Color.black, width: 2).cornerRadius(5)
            .background(Color.white)

            //.tint(Color.black)
    }
}


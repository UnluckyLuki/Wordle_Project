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
            .frame(width: 15, height: 15)
            .font(.system(size: 15))
            .padding(8)
            .border(viewModel.wrongLetters.contains(text) ? Color.gray : Color.black, width: 2)
            .background(Color.white).cornerRadius(5)
            //.tint(Color.black)
    }
}


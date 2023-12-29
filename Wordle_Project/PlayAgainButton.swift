//
//  PlayAgainButton.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct PlayAgainButton: View {
    var isGuessed: Bool = false
    @ObservedObject var viewModel: WordleGameViewModel
    var body: some View {
        Button(viewModel.answer.count == 6 ? "Zagraj ponownie" : "Nastepne slowo"){
            if viewModel.answer.count == 6 {
                viewModel.playAgain()
            } else {
                viewModel.nextWord()
            }
        }
        .disabled(!viewModel.wordGuessed)
        .padding(2)
        .frame(width: 150, height: 40)
        //.tint(.blue)
        .border(!viewModel.wordGuessed ? Color.gray : Color.blue, width: 2)
        .cornerRadius(5)

    }
}

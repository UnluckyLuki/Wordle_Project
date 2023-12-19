//
//  AnswerTale.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct AnswerTale: View {
    var letter : WordleGameModel<String>.Letter
    init(_ letter: WordleGameModel<String>.Letter) {
        self.letter = letter
    }
    var body: some View {
        Text(letter.content)
            .frame(width: 40, height: 40)
            .font(.system(size: 50))
            .padding(12)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
            .background(.gray).cornerRadius(5)
    }
}


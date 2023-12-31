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
        RoundedRectangle(cornerRadius: 10)
            .fill(letter.isCorrect ? Color.green : letter.isOccurs ? Color.yellow : letter.isWrong ? Color.red : Color.gray)
            .frame(width: 70, height: 70)
            .padding(10)
            .rotation3DEffect(
                .degrees(letter.isWrong || letter.isOccurs || letter.isCorrect ? 0 : 180),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
            .animation(Animation.default.delay(Double(letter.id)/4))
            .overlay(
                Text(letter.content)
                .font(.system(size: 50))
            )

    }
//        Text(letter.content)
//            .frame(width: 40, height: 40)
//            .font(.system(size: 50))
//            .padding(12)
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
//            .background(letter.isCorrect ? Color.green : letter.isOccurs ? Color.yellow : letter.isWrong ? Color.red : Color.gray).cornerRadius(5)
//    }
}


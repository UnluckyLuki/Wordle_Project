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
            .frame(width: 50, height: 50)
            .padding(3)
            .rotation3DEffect(
                .degrees(letter.isWrong || letter.isOccurs || letter.isCorrect ? 0 : 180),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
            .animation(Animation.default.delay(Double(letter.id)/4))
            .overlay(
                withAnimation(nil){
                    Text(letter.content)
                    .font(.system(size: 40))}
            )

    }
}


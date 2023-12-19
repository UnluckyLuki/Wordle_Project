//
//  RowDisplay.swift
//  Wordle_Project
//
//  Created by student on 19/12/2023.
//

import SwiftUI

struct RowDisplay: View {
    var row : WordleGameModel<String>.Row
    init(_ row: WordleGameModel<String>.Row) {
        self.row = row
    }
    var body: some View {
        HStack{
            ForEach(row.Letters){
                letter in AnswerTale(letter)
            }
        }.padding(4)
    }
}


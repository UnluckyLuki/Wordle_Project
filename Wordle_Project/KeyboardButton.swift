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
    var isBlocked: Bool = false
    var body: some View {
        Button(text){
            viewModel.changeLetter(input: text)
        }.disabled(isBlocked)
            .frame(width: 15, height: 15)
            .font(.system(size: 15))
            .padding(8)
            .border(isBlocked ? Color.gray : Color.black, width: 2)
            .background(Color.white).cornerRadius(5)
            //.tint(Color.black)
    }
}


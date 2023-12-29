//
//  ResetButton.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct ResetButton: View {
    @ObservedObject var viewModel: WordleGameViewModel
    var body: some View {
        Button("Reset"){
            viewModel.reset()
        }.frame(width: 100, height: 40)
            //.tint(.blue)
            .border(Color.blue, width: 2)
            .cornerRadius(5)

    }
}

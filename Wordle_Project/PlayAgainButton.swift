//
//  PlayAgainButton.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct PlayAgainButton: View {
    var isGuessed: Bool = false
    var body: some View {
        Button("Zagraj ponownie"){
            
        }.disabled(isGuessed)
        .padding(2)
        .frame(width: 150, height: 40)
        //.tint(.blue)
        .border(isGuessed ? Color.gray : Color.blue, width: 2)
        .cornerRadius(5)

    }
}

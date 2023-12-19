//
//  KeyboardButton.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct KeyboardButton: View {
    var text: String = ""
    var isBlocked: Bool = false
    var body: some View {
        Button(text){
            
        }.disabled(isBlocked)
            .frame(width: 15, height: 15)
            .font(.system(size: 15))
            .padding(8)
            .border(isBlocked ? .gray : .black, width: 2)
            .background(.white).cornerRadius(5).tint(.black)
    }
}

#Preview {
    KeyboardButton()
}

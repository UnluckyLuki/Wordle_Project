//
//  AnswerTale.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct AnswerTale: View {
    var body: some View {
        
        Text("A")
            .frame(width: 40, height: 40)
            .font(.system(size: 50))
            .padding(12)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
            .background(.gray).cornerRadius(5)
    }
}

#Preview {
    AnswerTale()
}

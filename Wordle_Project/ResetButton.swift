//
//  ResetButton.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct ResetButton: View {
    var body: some View {
        Button("Reset"){
            
        }.frame(width: 100, height: 40)
            .tint(.blue)
            .border(.blue, width: 2)
            .cornerRadius(5)

    }
}

#Preview {
    ResetButton()
}

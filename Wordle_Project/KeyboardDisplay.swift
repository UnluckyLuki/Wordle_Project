//
//  KeyboardDisplay.swift
//  Wordle_Project
//
//  Created by Artur on 29/12/2023.
//

import SwiftUI

struct KeyboardDisplay: View {
    @ObservedObject var viewModel: WordleGameViewModel

    var body: some View {
        VStack{
            HStack{
                KeyboardButton(viewModel: viewModel, text:"Q")
                KeyboardButton(viewModel: viewModel, text:"W")
                KeyboardButton(viewModel: viewModel, text:"E")
                KeyboardButton(viewModel: viewModel, text:"R")
                KeyboardButton(viewModel: viewModel, text:"T")
                KeyboardButton(viewModel: viewModel, text:"Y")
                KeyboardButton(viewModel: viewModel, text:"U")
                KeyboardButton(viewModel: viewModel, text:"I")
                KeyboardButton(viewModel: viewModel, text:"O")
                KeyboardButton(viewModel: viewModel, text:"P")
            }
            HStack{
                KeyboardButton(viewModel: viewModel, text:"A")
                KeyboardButton(viewModel: viewModel, text:"S")
                KeyboardButton(viewModel: viewModel, text:"D")
                KeyboardButton(viewModel: viewModel, text:"F")
                KeyboardButton(viewModel: viewModel, text:"G")
                KeyboardButton(viewModel: viewModel, text:"H")
                KeyboardButton(viewModel: viewModel, text:"J")
                KeyboardButton(viewModel: viewModel, text:"K")
                KeyboardButton(viewModel: viewModel, text:"L")
            }
            HStack{
                KeyboardButton(viewModel: viewModel, text:"Z")
                KeyboardButton(viewModel: viewModel, text:"X")
                KeyboardButton(viewModel: viewModel, text:"C")
                KeyboardButton(viewModel: viewModel, text:"V")
                KeyboardButton(viewModel: viewModel, text:"B")
                KeyboardButton(viewModel: viewModel, text:"N")
                KeyboardButton(viewModel: viewModel, text:"M")

            }
        }
    }
}

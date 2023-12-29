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
                KeyboardButton(viewModel: viewModel, text:"Q", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"W", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"E", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"R", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"T", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"Y", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"U", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"I", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"O", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"P", isBlocked: false)
            }
            HStack{
                KeyboardButton(viewModel: viewModel, text:"A", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"S", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"D", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"F", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"G", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"H", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"J", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"K", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"L", isBlocked: false)
            }
            HStack{
                KeyboardButton(viewModel: viewModel, text:"Z", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"X", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"C", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"V", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"B", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"N", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"M", isBlocked: false)

            }
        }
    }
}

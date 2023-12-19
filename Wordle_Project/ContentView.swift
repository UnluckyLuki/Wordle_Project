//
//  ContentView.swift
//  Wordle_Project
//
//  Created by student on 12/12/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: WordleGameViewModel
    var body: some View {
        VStack {
            Text("Słowle").font(.largeTitle)
            GuessDisplay
            Spacer()
            KeyboardDisplay
            Spacer()
            Buttons
            Spacer()
        }
        .padding()
    }
    
//    var RowDisplay : some View{
//        HStack{
//            ForEach(viewModel.row){
//                letter in AnswerTale(letter)
//            }
//        }.padding(4)
//    }
    
    
    
    
    var GuessDisplay: some View{
        VStack{
            ForEach(viewModel.rows){row in
                RowDisplay(row)
            }
//            ForEach(0..<viewModel.attemps, id: \.self){_ in
//                RowDisplay
//            }
//            HStack{
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//            }.padding(4)
//            HStack{
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//            }.padding(4)
//            HStack{
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//            }.padding(4)
//            HStack{
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//                AnswerTale()
//            }.padding(4)
        }.frame(maxHeight:400)
    }
    var KeyboardDisplay: some View{
        VStack{
            HStack{
                KeyboardButton(viewModel: viewModel, text:"Q", isBlocked: false)
                KeyboardButton(viewModel: viewModel, text:"W", isBlocked: false)
//                KeyboardButton(text:"E", isBlocked: false)
//                KeyboardButton(text:"R", isBlocked: false)
//                KeyboardButton(text:"T", isBlocked: false)
//                KeyboardButton(text:"Y", isBlocked: false)
//                KeyboardButton(text:"U", isBlocked: false)
//                KeyboardButton(text:"I", isBlocked: false)
//                KeyboardButton(text:"O", isBlocked: false)
//                KeyboardButton(text:"P", isBlocked: false)
            }
            HStack{
//                KeyboardButton(text:"A", isBlocked: false)
//                KeyboardButton(text:"S", isBlocked: false)
//                KeyboardButton(text:"D", isBlocked: false)
//                KeyboardButton(text:"F", isBlocked: false)
//                KeyboardButton(text:"G", isBlocked: false)
//                KeyboardButton(text:"H", isBlocked: false)
//                KeyboardButton(text:"J", isBlocked: false)
//                KeyboardButton(text:"K", isBlocked: false)
//                KeyboardButton(text:"L", isBlocked: false)
            }
            HStack{
//                KeyboardButton(text:"Z", isBlocked: false)
//                KeyboardButton(text:"X", isBlocked: false)
//                KeyboardButton(text:"C", isBlocked: false)
//                KeyboardButton(text:"V", isBlocked: false)
//                KeyboardButton(text:"B", isBlocked: false)
//                KeyboardButton(text:"N", isBlocked: false)
//                KeyboardButton(text:"M", isBlocked: false)

            }
        }
    }
    var Buttons : some View{
        HStack{
            ResetButton()
            Spacer()
            PlayAgainButton(isGuessed: true)
        }
    }
}

#Preview {
    ContentView(viewModel: WordleGameViewModel())
}

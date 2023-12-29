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
            KeyboardDisplay(viewModel: viewModel)
            Spacer()
            Buttons
            Spacer()
        }
        .padding()
        .gesture(swipe)
    }
    
//    var RowDisplay : some View{
//        HStack{
//            ForEach(viewModel.row){
//                letter in AnswerTale(letter)
//            }
//        }.padding(4)
//    }
    
    
    
    var swipe: some Gesture{
        DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onEnded({ value in
                if value.translation.width < 0{
                    viewModel.deleteLetter()
                }
            })
    }
    
    
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
    
    var Buttons : some View{
        HStack{
            ResetButton(viewModel: viewModel)
            Spacer()
            PlayAgainButton(isGuessed: true, viewModel: viewModel)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(viewModel: WordleGameViewModel())
//}
//}


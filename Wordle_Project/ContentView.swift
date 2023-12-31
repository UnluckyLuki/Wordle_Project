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
        GeometryReader{ geometry in
            VStack {
                TopText
                GuessDisplay
                    .frame(height: geometry.size.height * 0.55, alignment: .top)
                Spacer()
                ScoreText
                Spacer()
                KeyboardDisplay(viewModel: viewModel)
                Buttons
            }
            .padding()
            .gesture(swipe)
        }
    }

    var TopText: some View{
        VStack{
            Text("Słowle")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
            Text("Proba: \(viewModel.attemps+1)")
                .font(.title2)
                .foregroundColor(Color.blue)
        }
    }
    
    var ScoreText: some View{
        VStack{
            Text(viewModel.wordGuessed ? "Brawo" : viewModel.gameOver ? "Nie udalo ci sie, poprawna odpowiedz: \(viewModel.answer.joined())" : "")
                .font(.title2)
                .foregroundColor(viewModel.wordGuessed ? Color.green : Color.red)
        }
    }
    
    var swipe: some Gesture{
        DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onEnded({ value in
                if value.translation.width < 0{
                    viewModel.deleteLetter()
                }
            })
    }
    
    
    var GuessDisplay: some View{
            LazyVGrid(columns: [GridItem(spacing: 0)], spacing: 0, content: {
                ForEach(viewModel.rows){row in
                    RowDisplay(row)
                        .aspectRatio(contentMode: .fit)
                        .padding(4)
                }
            })
        
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


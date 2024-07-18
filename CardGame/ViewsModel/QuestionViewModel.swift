//
//  QuestionViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 10/07/2024.
//

import SwiftUI

struct QuestionViewModels: View {
    
    @State var randomQuestion: Questions = Questions(question: "Pytanie", punishment: 0, points: 0)
    @State var punkty: Int = 0
    var body: some View {
        
        
        Text (randomQuestion.question)
            .font(.title2)
            .padding(30)
            .background(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .frame(maxWidth: .infinity)
            .padding(30)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
        
        HStack(alignment:.center) {
            Group {
                Circle()
                    .fill(Color(.red))
                    .frame(width: 70, height: 70)
                    .overlay {
                        Menu(randomQuestion.points.description) {
                            Button("ggg") {
                                punkty = randomQuestion.points + 1
                            }
                        }
                        
                        
                    }
                Circle()
                    .fill(Color(.blue))
                    .frame(width: 70, height: 70)
                    .overlay {
                        Text(randomQuestion.punishment.description)
                    }
            }
            .padding(30)
            .font(.largeTitle)
            }
        .padding(30)
        
        
        Spacer()
        
        Button("Losuj pytanie")
        {
            randomQuestion =  quesstionClass.randomElement() ?? randomQuestion
        }
        .buttonStyle(PlainButtonStyle.plain)
        
        
        }
    }


#Preview {
    QuestionViewModels()
}

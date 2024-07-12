//
//  QuestionViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 10/07/2024.
//

import SwiftUI

struct QuestionViewModels: View {
    
    @State var randomQuestion: Questions = Questions(question: "", punishment: 0, points: 0)
    
    var body: some View {
        Button("Losuj wyzwanie") {
            randomQuestion =  quesstionClass.randomElement() ?? Questions(question: "", punishment: 0, points: 0)
        }
        
        Text (randomQuestion.question)
    
            
            HStack {
                Text(randomQuestion.points.description)
                Text(randomQuestion.punishment.description)
            }
        }
    }


#Preview {
    QuestionViewModels()
}

//
//  QuestionViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 10/07/2024.
//

import SwiftUI

struct QuestionViewModels: View {
    @State var randomQuestion = quesstionClass.randomElement() ?? Questions(question: "", punishment: 0, points: 0)
    var body: some View {
            Spacer()
            Text (randomQuestion.question)
            
            Spacer()
            
            HStack {
                Text(randomQuestion.points.description)
                Text(randomQuestion.punishment.description)
            }
        }
    }


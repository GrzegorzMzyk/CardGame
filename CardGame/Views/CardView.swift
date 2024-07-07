//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
struct CardView: View {
//    @EnvironmentObject private var QD: QuestionViewModel
//    var myQuestions: Questions =
//        Questions(question: "pytanie 1", punishment: 2, points: 1)
    
    
   
    let somevalue = questionsClass()
    var body: some View {
    
        
      var value = somevalue.pytanie11.question
        
        NavigationStack {
            
           VStack {
              Text(value)
                   }
        }
        .navigationTitle("Card Game")
        .navigationBarTitleDisplayMode(.large)
        .background(Color.gray)
        
    }
}


#Preview {
    CardView()
     
        
}

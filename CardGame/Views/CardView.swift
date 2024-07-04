//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
struct Questions: Identifiable {
    let id: String = UUID().uuidString
    let question: String
    let punishment: Int
    let points: Int
    }
struct CardView: View {
    
    var myQuestions: Questions =
        Questions(question: "Wypowiedz imię osoby z którą uprawiałeś seks", punishment: 2, points: 1)
   
        
    
    var body: some View {
        NavigationStack {
            
            VStack{
                Text(myQuestions.question)
                    .font(.largeTitle)
                    .bold()
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

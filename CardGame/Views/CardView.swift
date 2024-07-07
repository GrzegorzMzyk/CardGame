//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
struct CardView: View {

    let questionCard = questionsClass()
    var body: some View {
    
        
        let ask = questionCard.question1.question
        let points = questionCard.question1.points
        let punishment = questionCard.question1.punishment
        NavigationStack {
            
           VStack {
              Text ("Pytanie: \(ask)")
               Text("Punkty: \(points.description)")
               Text("Shoty: \(punishment.description)")
                   }
                Button(action: {
                let ask2 = ask.startIndex
                
            }, label: {
                Text("Następne pytanie")
            })
            
        }
        .navigationTitle("Card Game")
        .navigationBarTitleDisplayMode(.large)
        .background(Color.gray)
        
    }
}


#Preview {
    CardView()
     
        
}

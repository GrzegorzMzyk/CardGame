//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
struct CardView: View {


    var body: some View {
            let randomQuestion = quesstionClass.randomElement() ?? Questions(question: "", punishment: 0, points: 0)
    
        
        NavigationStack {
            
            VStack {
                Spacer()
                Text (randomQuestion.question)
                Text(randomQuestion.points.description)
                Text(randomQuestion.punishment.description)
                Spacer()
                HStack {

                }
            }
           
                Button(action: {
                   
             
                
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

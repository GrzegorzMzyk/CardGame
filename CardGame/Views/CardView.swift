//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
struct CardView: View {
    
    
    

    var body: some View {
        NavigationStack {
            NavigationLink("Kolejne Pytanie") {
                QuestionViewModels()
            }
  
            }
            
            .ignoresSafeArea()
            .navigationTitle("Card Game")
            .navigationBarTitleDisplayMode(.automatic)
            
        
       
        }

    }




#Preview {
    CardView()
}

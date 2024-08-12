//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
struct CardView: View {
    var cardView: UserViewModel = UserViewModel()

    
   
    @Binding var randomQuestion: Questions
    @Binding var userek: UserModel
    var body: some View {
        NavigationStack {
            UserViewModel()
            
            NavigationLink("START") {
                QuestionViewModels(randomQuestion: $randomQuestion, userek: $userek)
            }
            Spacer()
            .ignoresSafeArea()
            .navigationTitle("Card Game")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar(content: {
                EditButton()
                })

            }
       
        }

    }




#Preview {
    CardView(randomQuestion: .constant(Questions(question: "qqqqq", punishment: 0, points: 0)), userek: .constant(UserModel(userName: "qre", userPoints: 0)))
    
//    CardView(points: .constant(9999), users: .constant(UserModel(userName: "", userPoints: 0)), randomQuestion: .constant(Questions(question: "", punishment: 998, points: 976)), userek: .constant([UserModel(userName: "", userPoints: 0)]))
}



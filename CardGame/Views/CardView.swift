//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI

struct CardView: View {
    
    var cardView: UserViewModel = UserViewModel()
    @State var randomQuestion: Questions = Questions(question: "", punishment: 0, points: 0)
    @State var userek: UserModel = UserModel(userName: "", userPoints: 0)
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
        .environment(randomQuestion)
       
        }
       
        

    }




#Preview {
    CardView()
    
//    CardView(points: .constant(9999), users: .constant(UserModel(userName: "", userPoints: 0)), randomQuestion: .constant(Questions(question: "", punishment: 998, points: 976)), userek: .constant([UserModel(userName: "", userPoints: 0)]))
}



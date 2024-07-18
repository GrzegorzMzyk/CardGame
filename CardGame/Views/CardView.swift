//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
struct CardView: View {
//    @Binding var addUser: String
    @Binding var points: Int
    @Binding var users: UserModel
    @Binding var randomQuestion: Questions
    @Binding var userek: [UserModel]
    var body: some View {
        NavigationStack {
            
            UserViewModel(users: users, userek: userek)
            
            NavigationLink("START") {
                QuestionViewModels(randomQuestion: randomQuestion, users: users)
            }
            Spacer()
            .ignoresSafeArea()
            .navigationTitle("Card Game")
            .navigationBarTitleDisplayMode(.automatic)
//            .toolbar(content: {
//                Image(systemName: "plus")
//                    .onTapGesture {
//                        UserViewModel(points: points).add()
//                        
//                    }
//            })
            }
       
        }

    }




#Preview {
    CardView(points: .constant(9999), users: .constant(UserModel(userName: "", userPoints: 0)), randomQuestion: .constant(Questions(question: "", punishment: 998, points: 976)), userek: .constant([UserModel(userName: "", userPoints: 0)]))
}



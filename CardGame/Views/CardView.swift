//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
struct CardView: View {
    @Binding var addUser: String
    @Binding var points: Int

    var body: some View {
        NavigationStack {
            
            UserViewModel(points: $points)
            
            NavigationLink("START") {
                QuestionViewModels()
            }
            Spacer()
            .ignoresSafeArea()
            .navigationTitle("Card Game")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar(content: {
                Image(systemName: "plus")
                    .onTapGesture {
                        UserViewModel(points: $points).add()
                        addUser = ""
                    }
            })
            }
       
        }

    }




#Preview {
    CardView(addUser: .constant("error"), points: .constant(0))
}



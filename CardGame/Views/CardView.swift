//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
struct CardView: View {
    @Binding var addUser: String

    var body: some View {
        NavigationStack {
            
            UserViewModel()
            
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
                        UserViewModel().add()
                        addUser = ""
                    }
            })
            }
       
        }

    }




#Preview {
    CardView(addUser: .constant("error"))
}



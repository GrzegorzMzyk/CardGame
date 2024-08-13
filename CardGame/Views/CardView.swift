//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI

struct CardView: View {
    var cardView: UserViewModel = UserViewModel()
    @State var showUsers:Bool = false
    @State var randomQuestion: Questions = Questions(question: "", punishment: 0, points: 0)
    var body: some View {
        NavigationStack {
            UserViewModel()
          
            
            NavigationLink("START") {
              
                QuestionViewModels(randomQuestion: $randomQuestion)
            }
            Spacer()
            .ignoresSafeArea()
            .navigationTitle("Card Game")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar(content: {
                EditButton()
                Button(action: {
                    showUsers.toggle()
                }, label: {
                    Text("Users")
                })
                .sheet(isPresented: $showUsers, content: {
                    // nie dodawac tu if else ...
                    UserSheet()
                })
                }
            
            )
            

            }
        .environment(randomQuestion)
       
        }
       
        

    }




#Preview {
    CardView()

}



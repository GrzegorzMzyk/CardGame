//
//  UserViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 13/07/2024.
//

import SwiftUI

struct UserViewModel: View {
    @State var addUser: String = ""
    @State var point: Int16 = 0
    @State var um = UserModel()
   
    
    var body: some View {
List {
                   Section {
                       ForEach(um.savedEntities) { user in
                           HStack {
                               Text(user.name ?? "no name")
                               Spacer()
                               Text(user.points.description)
                               
                           }
                       }
                       .onDelete(perform: um.delete)
                           
                   }
               header: {
                   HStack {
                       Text("Gracz")
                       Spacer()
                       Text("Punkty:")
                   }
                   .font(.subheadline)
               }
               }
               .listStyle(.sidebar)
               
        HStack(){
            TextField("Nowy user", text: $addUser)
                .font(.title)
        }
        Button(action: {
            if textIsAppropriate() {
                add()
            }
        }, label: {
            Text("Add")
                .padding()
                .frame(maxWidth: .infinity)
                .background(textIsAppropriate() ? Color.blue : Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(Color.white)
            .font(.headline)
        })
        .disabled(!textIsAppropriate())
    
    }
}

extension UserViewModel {
func add() {
    um.addUser(text: addUser, number: point)
  }
   
    func textIsAppropriate() -> Bool {
        // check text
        if addUser.count >= 3 {
            return true
        }
        return false
    }
}

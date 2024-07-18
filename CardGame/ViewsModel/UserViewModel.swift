//
//  UserViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 13/07/2024.
//

import SwiftUI


struct UserViewModel: View {
    @State var addUser: String = ""
    @State var users: [UserModel] = []
    
    var body: some View {
        
        List {
            Section {
                ForEach(users) { user in
                    HStack {
                        Text(user.userName)
                        Spacer()
                        Text(user.points.description)
                    }
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
                    
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
            Image(systemName: "plus")
                .onTapGesture {
                    add()
                    addUser = ""
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .padding()
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 15.0))
        .padding()
    }
    
 
          
    
}

extension UserViewModel {
    func add() {
      users.append(UserModel(userName:addUser, points: 0))
  }
    func delete(indexSet: IndexSet) {
        users.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset: Int) {
        users.move(fromOffsets: indices, toOffset: newOffset)
    }
}

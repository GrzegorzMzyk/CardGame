//
//  UserViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 13/07/2024.
//

import SwiftUI


struct UserViewModel: View {
    @State var addUser: String = ""
     var users: UserModel
//    @State var point: Int = 0
    @State var userek: [UserModel] = [UserModel(userName: "", userPoints: 0)]

    var body: some View {
        
        List {
            Section {
                ForEach(userek) { user in
                    HStack {
                        Text(user.userName)
                        Spacer()
                     
                        Text(user.userPoints.description)
                        
                    }
                }
//                .onDelete(perform: delete)
//                .onMove(perform: move)
                    
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
    mutating func add() {
        userek.append( UserModel(userName: addUser, userPoints: 0 ))
       
  
  }
    mutating func delete(indexSet: IndexSet) {
        userek.remove(atOffsets: indexSet)
    }
    mutating func move(indices: IndexSet, newOffset: Int) {
        userek.move(fromOffsets: indices, toOffset: newOffset)
    }
}

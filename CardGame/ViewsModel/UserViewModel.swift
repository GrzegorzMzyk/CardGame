//
//  UserViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 13/07/2024.
//

import SwiftUI


struct UserViewModel: View {
    
    @State var addUser: String = ""
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
                }
                .font(.title)
        }
        .padding()
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 15.0))
        .padding()
    }
}

extension UserViewModel {
func add() {
    userek.append(UserModel(userName: addUser, userPoints: 0))
  }
   func delete(indexSet: IndexSet) {
        userek.remove(atOffsets: indexSet)
    }
   func move(indices: IndexSet, newOffset: Int) {
        userek.move(fromOffsets: indices, toOffset: newOffset)
    }
}

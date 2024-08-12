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
    @State  var randomQuestion: Questions = Questions(question: "puste", punishment: 0, points: 0)
    
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
                .font(.title)
        }
        Button(action: {
            if textIsAppropriate() {
                add()
            }
        }, label: {
            Text("Save".uppercased())
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
    userek.append(UserModel(userName: addUser, userPoints: 0))
    addUser = ""
  }
   func delete(indexSet: IndexSet) {
        userek.remove(atOffsets: indexSet)
    }
   func move(indices: IndexSet, newOffset: Int) {
        userek.move(fromOffsets: indices, toOffset: newOffset)
    }
    func textIsAppropriate() -> Bool {
        // check text
        if addUser.count >= 3 {
            return true
        }
        return false
    }
}

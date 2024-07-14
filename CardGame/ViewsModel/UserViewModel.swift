//
//  UserViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 13/07/2024.
//

import SwiftUI


struct UserViewModel: View {
    
    @State var users: [UserModel] = [
        UserModel(userName: "grmzy", points: 0),
        UserModel(userName: "fff", points: 1)
    ]
    
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
    }
   
}

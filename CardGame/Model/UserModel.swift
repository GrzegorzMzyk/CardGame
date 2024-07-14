//
//  UserModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 14/07/2024.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let userName: String
    let points: Int
    
    init(userName: String, points: Int) {
        self.userName = userName
        self.points = points
    }
}


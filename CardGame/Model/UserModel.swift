//
//  UserModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 14/07/2024.
//

import Foundation

//struct UserModel: Identifiable {
//    let id: String = UUID().uuidString
//    let userName: String
//    let points: Int
//    
//    init(userName: String, points: Int) {
//        self.userName = userName
//        self.points = points
//    }
//}
import Observation

@Observable class UserModel: Identifiable {
    let userName: String
    let userPoints: Int
    
    init(userName: String, userPoints: Int) {
        self.userName = userName
        self.userPoints = userPoints
    }
}

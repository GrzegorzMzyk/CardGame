//
//  UserModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 14/07/2024.
//

import Foundation

import Observation

@Observable class UserModel: Identifiable {
    
    var userName: String
    var userPoints: Int
    
    init(userName: String, userPoints: Int) {
        self.userName = userName
        self.userPoints = userPoints
    }
   
        
    }


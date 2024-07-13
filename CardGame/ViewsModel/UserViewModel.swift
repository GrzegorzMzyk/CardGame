//
//  UserViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 13/07/2024.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let userName: String
    let points: Int
}

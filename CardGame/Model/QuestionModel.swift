//
//  QuestionModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 04/07/2024.
//

import Foundation
import Observation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let userName: String
    let points: Int
}

@Observable class Questions {

    var  question: String
    var  punishment: Int
    var  points: Int
    
    init( question: String, punishment: Int, points: Int) {

        self.question = question
        self.punishment = punishment
        self.points = points
        
    }
        
    
    }

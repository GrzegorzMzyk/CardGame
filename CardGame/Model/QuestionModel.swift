//
//  QuestionModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 04/07/2024.
//

import Foundation
import Observation

@Observable class Questions {
    var  id: String
    var  question: String
    var  punishment: Int
    var  points: Int
    
    init(id: String, question: String, punishment: Int, points: Int) {
        self.id = id
        self.question = question
        self.punishment = punishment
        self.points = points
    }
    
    }

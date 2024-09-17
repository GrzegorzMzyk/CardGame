//
//  QuestionModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 04/07/2024.
//

import Foundation
import Observation

@Observable class Questions {

    var  question: String = ""
    var  punishment: Int = 0
    var  points: Int = 0
  
    init( question: String, punishment: Int, points: Int) {
        self.question = question
        self.punishment = punishment
        self.points = points

    }
    }

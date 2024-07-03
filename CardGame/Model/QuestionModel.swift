//
//  QuestionModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import Foundation

struct Questions: Identifiable {
    let id: String = UUID().uuidString
    let question: String
    let punishment: Int
    let points: Int
    
    init(question: String, punishment: Int, points: Int) {
        self.question = question
        self.punishment = punishment
        self.points = points
    }
    
}

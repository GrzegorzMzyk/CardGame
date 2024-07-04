//
//  QuestionModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 04/07/2024.
//

import Foundation

struct Questions: Identifiable {
    let id: String = UUID().uuidString
    let question: String
    let punishment: Int
    let points: Int
    }

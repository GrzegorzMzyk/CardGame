//
//  CardGameApp.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
import SwiftData

@main
struct CardGameApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            CardView(randomQuestion: .constant(Questions(question: "qqqqq", punishment: 0, points: 0)), userek: .constant(UserModel(userName: "qre", userPoints: 0)))
        }
        .modelContainer(sharedModelContainer)
    }
}

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
            CardView(points: .constant(9999), users: .constant(UserModel(userName: "", userPoints: 0)), randomQuestion: .constant(Questions(question: "", punishment: 998, points: 976)), userek: .constant([UserModel(userName: "", userPoints: 0)]))
        }
        .modelContainer(sharedModelContainer)
    }
}

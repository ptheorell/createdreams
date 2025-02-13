//
//  create_dreamsApp.swift
//  create dreams
//
//  Created by Peter Theorell on 2024-12-29.
//

import SwiftUI
import SwiftData

@main
struct create_dreamsApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            DreamsDraftMO.self,
            DreamingSessionMO.self,
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
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}

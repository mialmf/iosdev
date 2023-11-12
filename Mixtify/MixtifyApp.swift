//
//  MixtifyApp.swift
//  Mixtify
//
//  Created by Mia Felipe on 11/8/23.
//

import SwiftUI

@main
struct MixtifyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
        ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

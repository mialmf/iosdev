//
//  iosdevApp.swift
//  iosdev
//
//  Created by Mia Felipe on 9/25/23.
//

import SwiftUI

@main
struct iosdevApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

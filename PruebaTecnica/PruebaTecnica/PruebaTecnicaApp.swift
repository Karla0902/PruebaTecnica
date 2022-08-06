//
//  PruebaTecnicaApp.swift
//  PruebaTecnica
//
//  Created by Karla Compean on 05/08/22.
//

import SwiftUI

@main
struct PruebaTecnicaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

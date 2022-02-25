//
//  LouBankApp.swift
//  LouBank
//
//  Created by Tarlan on 23.02.22.
//

import SwiftUI

@main
struct LouBankApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

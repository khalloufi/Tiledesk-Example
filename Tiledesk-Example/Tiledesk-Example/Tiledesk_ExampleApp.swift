//
//  Tiledesk_ExampleApp.swift
//  Tiledesk-Example
//
//  Created by issam on 20/7/2022.
//

import SwiftUI

@main
struct Tiledesk_ExampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

//
//  CropImageApp.swift
//  CropImage
//
//  Created by Abdullah Karaboğa on 1.01.2023.
//

import SwiftUI

@main
struct CropImageApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

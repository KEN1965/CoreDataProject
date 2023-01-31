//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by K.Takahama on R 5/01/23.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)

        }
    }
}

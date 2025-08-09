//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Aleksandr Zhazhoyan on 03.08.2025.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}

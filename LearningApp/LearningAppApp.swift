//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by AM Alice - Kelsie Culbert on 12/1/21.
//

import SwiftUI

@main
struct LearningAppApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}

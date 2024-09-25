//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-18.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}

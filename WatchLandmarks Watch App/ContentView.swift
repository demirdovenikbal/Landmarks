//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Ikbal Demirdoven on 2024-09-28.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkList()
                .task {
                    let center = UNUserNotificationCenter.current()
                    _ = try? await center.requestAuthorization(
                        options: [.alert, .sound, .badge]
                    )
                }
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

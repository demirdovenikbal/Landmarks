//
//  NotificationView.swift
//  WatchLandmarks Watch App
//
//  Created by Ikbal Demirdoven on 2024-09-30.
//

import SwiftUI

struct NotificationView: View {
    var title : String?
    var message : String?
    var landmark : Landmark?
    var body: some View {
        if let landmark {
            CircleImage(image: landmark.image.resizable())
                .scaledToFit()
        }
        Text(title ?? "Unknown Landmark")
            .font(.headline)
        Divider()
        Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
            .font(.caption)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    NotificationView(title: "Turtle Rock", message: "You are within 5 miles of Turtle Rock.", landmark: ModelData().landmarks[0])
}

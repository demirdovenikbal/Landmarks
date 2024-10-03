//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(9)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .bold()
                #if !os(watchOS)
                Text(landmark.park)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                #endif
            }
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview("Turtle Rock") {
    LandmarkRow(landmark: ModelData().landmarks[0])
}

//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-22.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
        .sorted { $0.name < $1.name }
    }
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) {
                    landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: showFavoritesOnly)
            .navigationTitle("Landmarks")
//            .frame(minWidth: 300)
        } detail: {
            Text("Select a landmark.")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}

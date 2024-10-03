//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Ikbal Demirdoven on 2024-09-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(width: 700, height: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

//
//  ContentView.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

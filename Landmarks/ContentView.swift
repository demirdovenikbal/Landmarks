//
//  ContentView.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            Text("Joshua Tree National Park")
                .font(.subheadline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

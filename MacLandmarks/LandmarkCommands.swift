//
//  LandmarkCommands.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-10-03.
//

import Foundation
import SwiftUI


struct LandmarkCommands : Commands {
    @FocusedBinding(\.selectedLandmark) var selectedLandmark
    var body: some Commands {
        SidebarCommands()
        CommandMenu("Landmarks") {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            .keyboardShortcut("f", modifiers: [.shift, .option])
            .disabled(selectedLandmark == nil)
        }
    }
}


private struct SelectedLandmarkKey : FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue
        }
    }
}

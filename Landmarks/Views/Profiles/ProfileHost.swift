//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-25.
//

import SwiftUI

struct ProfileHost: View {
    @State private var defaultProfile = Profile.default
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .active {
                Button("Cancel", role: .cancel) {
                    defaultProfile = modelData.profile
                    editMode?.animation().wrappedValue = .inactive
                }
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $defaultProfile)
                    .onAppear {
                        defaultProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = defaultProfile
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}

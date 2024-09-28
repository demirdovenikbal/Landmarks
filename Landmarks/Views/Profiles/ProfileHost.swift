//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-25.
//

import SwiftUI

struct ProfileHost: View {
    @State private var defaultProfile = Profile.default
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: defaultProfile)
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}

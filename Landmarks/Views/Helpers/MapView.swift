//
//  MapView.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-21.
//

import SwiftUI
import MapKit

struct MapView: View {
    private var region : MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"
        var id : Zoom {
            return self
        }
    }
    var coordinate : CLLocationCoordinate2D
    var body: some View {
        Map(position: .constant(.region(region)))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}

//
//  Landmark.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Hashable, Codable, Identifiable {
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
    private var imageName : String
    var image : Image {
        Image(imageName)
    }
    var isFavorite : Bool
    var isFeatured : Bool
    
    private var coordinates : Coordinates
    
    struct Coordinates : Hashable, Codable {
        var latitude : Double
        var longitude : Double
    }
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude : coordinates.latitude,
            longitude : coordinates.longitude
        )
    }
    
    var featureImage : Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    var category : Category
    
    enum Category : String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}

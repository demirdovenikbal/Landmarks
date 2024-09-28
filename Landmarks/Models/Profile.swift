//
//  Profile.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-25.
//

import Foundation

struct Profile {
    var username : String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username : "Ikbal")
    
    enum Season : String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "❄️"
        
        var id : String { rawValue }
    }
}

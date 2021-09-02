//
//  Museum.swift
//  Museum
//
//  Created by Sihan Chen on 2021/9/2.
//

import Foundation

class Museum: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    var artworkNames: [String]
    
    init(name: String, description: String, latitude: Double, longitude: Double, artworkNames: [String]) {
        self.name = name
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        self.artworkNames = artworkNames
    }
    
    
}

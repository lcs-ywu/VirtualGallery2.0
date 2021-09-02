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
    var latitude: Double
    var longitude: Double
    var artworks: [Artwork]
    
    init(name: String, latitude: Double, longitude: Double, artworks: [Artwork]) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.artworks = artworks
    }
}

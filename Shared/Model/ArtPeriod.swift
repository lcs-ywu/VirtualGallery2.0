//
//  ArtPeriod.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-06-01.
//

import SwiftUI

struct Period: Identifiable {
    var id = UUID()
    let name: String
    let characteristics: String
    let artists : [Artist]
    let time : String
    let description : String
    let works : [String]
    let contributors : String
    
    
    static let example = Period(name: "Prehistoric Art", characteristics: "Rock carvings, pictorial imagery, sculptures, and stone arrangements", artists: [], time: "~40,000–4,000 B.C.", description: """
The origins of art history can be traced back to the Prehistoric era, before written records were kept. The earliest artifacts come from the Paleolithic era, or the Old Stone Age, in the form of rock carvings, engravings, pictorial imagery, sculptures, and stone arrangements.

Art from this period relied on the use of natural pigments and stone carvings to create representations of objects, animals, and rituals that governed a civilization’s existence. One of the most famous examples is that of the Paleolithic cave paintings found in the complex caves of Lascaux in France. Though discovered in 1940, they’re estimated to be up to 20,000 years old and depict large animals and vegetation from the area.
""", works: ["Prehistoric Art"], contributors: "Prehistoric cultures that existed before the advent of a written language")
    
}


struct Periods {
    var periods: [Period] = []
    init() {
        
        self.periods = allArtPeriods
        
    }
}

let testPeriods = Periods()

func getArtist(named name: String) -> Artist {
    if let artist = allArtists.first(where: {$0.name == name}) {
        return artist
    } else {
        
        print("Something went terribly wrong")
        
        return Artist(name: "Error", age: "404", identity: "Computational Error Designer", infor: "10001011", artistStatement: "00100100", LCSArtist: false, works: [])
    }
}

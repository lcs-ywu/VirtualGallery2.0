//
//  Artist.swift
//  Artist
//
//  Created by James Wu on 2021-08-30.
//

import SwiftUI

class Artist: Identifiable {
    var id = UUID()
    var name: String
    var age: String
    var identity: String
    var infor: String
    var artistStatement: String
    var LCSArtist: Bool
    var works: [String]
    var link: String
    
    init(name: String, age: String, identity: String, infor: String, artistStatement: String, LCSArtist: Bool, works:[String], link: String) {
        self.name = name
        self.age = age
        self.identity = identity
        self.infor = infor
        self.artistStatement = artistStatement
        self.LCSArtist = LCSArtist
        self.works = works
        self.link = link
    }
    
    static let testArtist = Artist(name: "Leonardo da Vinci",
                                   age: "14/15 April 1452 – 2 May 1519",
                                   identity: "Italian polymath",
                                   infor: "Leonardo da Vinci was an Italian polymath of the High Renaissance who is widely considered one of the most diversely talented individuals ever to have lived. While his fame initially rested on his achievements as a painter, he also became known for his notebooks, in which he made drawings and notes on science and invention; these involve a variety of subjects including anatomy, astronomy, botany, cartography, painting, and palaeontology. Leonardo's genius epitomized the Renaissance humanist idea, and his collective works compose a contribution to later generations of artists rivalled only by that of his contemporary Michelangelo.",
                                   artistStatement: "",
                                   LCSArtist: false,
                                   works: ["Mona Lisa",
                                           "The Last Supper"], link: "https://www.leonardoda-vinci.org/#:~:text=Leonardo%20Da%20Vinci%20%2D%20The%20Complete%20Works%20%2D%20leonardoda%2Dvinci.org")
}

class ArtistsStore: ObservableObject {
    @Published var artists : [Artist]
    @Published var LCSArtists: [Artist]
    @Published var NonLCSArtists: [Artist]
    
    
    
    init() {
        
        self.artists = allArtists
        self.LCSArtists = getLCSArtist(artists: allArtists)
        self.NonLCSArtists = getNonLCSArtist(artists: allArtists)
    }
}

func getLCSArtist(artists: [Artist]) -> [Artist] {
    var outputArray: [Artist] = []
    for artist in allArtists {
        if artist.LCSArtist == true {
            outputArray.append(artist)
        }
        
    }
    return outputArray
   
    
}

func getNonLCSArtist(artists: [Artist]) -> [Artist] {
    var outputArray: [Artist] = []
    for artist in allArtists {
        if artist.LCSArtist == false {
            outputArray.append(artist)
        }
        
    }
    return outputArray
}

func getHistoricArtist(artists: [Artist] , artistName: String) -> Artist {
    for artist in allArtists {
        if artist.name == artistName {
            return artist
        }
    }
    
    // Raise an error here
    print("Artist is not stored in the file, wrong artist name input")
    
    return Artist(name: "Error", age: "404", identity: "Computational Error Designer", infor: "10001011", artistStatement: "00100100", LCSArtist: false, works: [], link: "no links available")
}
let testArtistStore = ArtistsStore()

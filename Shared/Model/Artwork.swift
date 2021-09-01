//
//  Artwork.swift
//  Artwork
//
//  Created by James Wu on 2021-08-30.
//

import SwiftUI

class Artwork: Identifiable, Codable, Comparable {
    
    let id = UUID()
    var name: String
    var artist : String
    var yearCreated : Int
    var description : String
    var more : String
    var onDisplay : Bool
    var museum : String
    var latitude: Double
    var longitude: Double
    var medium: String
    var LCSart: Bool
    
    fileprivate(set) var isFavourite = false
    
    // Coding Keys
    enum CodingKeys: CodingKey {
        case name, artist, yearCreated, description, more, onDisplay, museum, latitude, longitude, medium, LCSart, isFavourite
    }
    
    // Initialize an artwork
    init(name: String, artist: String, yearCreated: Int, description: String, more: String, onDisplay: Bool, museum: String, latitude: Double, longitude: Double, medium: String, LCSart: Bool) {
        self.name = name
        self.artist = artist
        self.yearCreated = yearCreated
        self.description = description
        self.more = more
        self.onDisplay = onDisplay
        self.museum = museum
        self.latitude = latitude
        self.longitude = longitude
        self.medium = medium
        self.LCSart = LCSart
    }
    
    // Conform to Comparable
    static func < (lhs: Artwork, rhs: Artwork) -> Bool {
        lhs.name < rhs.name
    }
    
    static func == (lhs: Artwork, rhs: Artwork) -> Bool {
        lhs.name == rhs.name
    }
}


class ArtworkStore: ObservableObject {
    
    @Published private(set) var artworks: [Artwork]
    @Published private(set) var artworksOnDisplay: [Artwork]
    @Published private(set) var favourites: [Artwork]
    
   
    
    
    
    
    
    
    static let storedFileName = "FavouritesSaved"
    
    init() {
        
        let filename = getDocumentsDirectory().appendingPathComponent(ArtworkStore.storedFileName)
        
        
        do {
            let data = try Data(contentsOf: filename)
            
            #if DEBUG
            print("Got data from file, contents are:")
            print(String(data: data, encoding: .utf8)!)
            #endif
            
            // Decode the data into Swift native data structures
            self.favourites = try JSONDecoder().decode([Artwork].self, from: data)
            
    
        } catch {
            #if DEBUG
            print(error.localizedDescription)
            print("Could not load data from file, initializing all artworks with the original list.")
            #endif
            self.favourites = []
            
        }
        
        
        
        self.artworks = allArtworks
        
        // Initialize the other two properties
        self.artworksOnDisplay = allArtworksOnDisplay
        
       
        
    }
    
    func toggle(_ artwork: Artwork) {
        
        // Tell SwiftUI that the object is changing before actually changing it, so that the animations look correct
        objectWillChange.send()
        
        // Actually change the provided prospect to mark that it has changed
        artwork.isFavourite.toggle()
        
        // Save the fact that this prospect has a different contacted state
        save()
    }
    
    // Add to favourites list
    func add(_ artwork: Artwork) {
        favourites.append(artwork)
        save()
    }
    
    // Maybe add do catch?
    func remove(_ artwork: Artwork) {
        favourites.remove(at: favourites.firstIndex(of: artwork)!)
        save()
    }
    
    // Prevent external calls to save the data
    private func save() {
        
        // Get a URL that points to the saved JSON data containing our list of people
        let filename = getDocumentsDirectory().appendingPathComponent(ArtworkStore.storedFileName)
        
        do {
            
            // Create an encoder
            let encoder = JSONEncoder()
            #if DEBUG
            encoder.outputFormatting = .prettyPrinted
            #endif
            
            // Encode the list of prospects we've collected
            let data = try encoder.encode(self.favourites)
            
            // Actually write the JSON file to the documents directory
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            
            #if DEBUG
            print("Saved data to documents directory successfully.")
            #endif
            
        } catch {
            
            #if DEBUG
            print(error.localizedDescription)
            print("Unable to write list of prospects to documents directory.")
            #endif
        }
        
    }
    
    
}


func getFavouriteArtworks(listOfAllArtworks: [Artwork]) -> [Artwork] {
    var temp: [Artwork] = []
    for artwork in listOfAllArtworks {
        if artwork.isFavourite {
            temp.append(artwork)
        }
    }
    
    return temp
}

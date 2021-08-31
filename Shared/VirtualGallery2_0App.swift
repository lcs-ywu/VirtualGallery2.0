//
//  VirtualGallery2_0App.swift
//  Shared
//
//  Created by James Wu on 2021-08-30.
//

import SwiftUI

@main


struct VirtualGallery2_0App: App {
    
    // Access the data store
    var artworkStore = ArtworkStore()
    var artistsStore = ArtistsStore()
    
    var body: some Scene {
        WindowGroup {
            
            MyContentView()
                .environmentObject(artworkStore)
                .environmentObject(artistsStore)
            // Problem: Clicking the middle of the two bars also alter the screen
        }
    }
}

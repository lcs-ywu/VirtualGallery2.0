//
//  Favourites.swift
//  Favourites
//
//  Created by James Wu on 2021-09-01.
//

import SwiftUI

struct Favourites: View {
    @EnvironmentObject var artworks: ArtworkStore
    
    @State private var shouldAnimate = true
    
    var favouriteArtworks: [Artwork] {
        var temp: [Artwork] = []
        for artwork in artworks.artworks {
            if artwork.isFavourite {
                temp.append(artwork)
            }
        }
        print(temp)
        return temp
    }
    
    var body: some View {
        Form {
            List {
                Section(header: Text("Artworks").foregroundColor(.black)) {
                    ForEach(artworks.favourites) { artwork in
                        NavigationLink(destination: ArtworkDetail(artwork: artwork)) {
                            HStack{
                                if #available(iOS 15.0, *) {
                                    AsyncImage(url: URL(string: urlDictionary[artwork.name] ??  "https://www.russellgordon.ca/vg/%E5%8D%95%E9%9D%A2%E9%95%9C.imageset/%E5%8D%95%E9%9D%A2%E9%95%9C.jpg")) {
                                        image in
                                        
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 44, height:44)
                                            .cornerRadius(15)
                                        
                                    } placeholder: {
                                        Placeholder(shouldAnimate: $shouldAnimate)
                                    }
                                    
                                } else {
                                    // Fallback on earlier versions
                                    Text("Image not supported with ios 14 or less")
                                }
                                
                                
                                Text(artwork.name)
                                Spacer()
                            }
                        }
                    }
                }
            }
        }
    
    }
}

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
        Favourites()
    }
}

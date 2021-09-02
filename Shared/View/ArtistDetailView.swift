//
//  ArtistDetailView.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-03-04.
//

import SwiftUI

struct ArtistDetailView: View {
    
    @State private var isNavigationBarHidden = false
    let artist: Artist
    @EnvironmentObject var artworkStore: ArtworkStore
    @State private var shouldAnimate = true
    
    var body: some View {
        ScrollView {
            
            if #available(iOS 15.0, *) {
                AsyncImage(url: URL(string: urlDictionary[artist.name] ??  "https://www.russellgordon.ca/vg/%E5%8D%95%E9%9D%A2%E9%95%9C.imageset/%E5%8D%95%E9%9D%A2%E9%95%9C.jpg")) {
                    image in
                    
                    image
                        .resizable()
                        .scaledToFit()
                        
                    
                } placeholder: {
                    Placeholder(shouldAnimate: $shouldAnimate)
                }
                
            } else {
                // Fallback on earlier versions
                Text("Image not supported with ios 14 or less")
            }
            
            
            
            HStack {
                Spacer()
                Text(artist.name).font(.title).bold().multilineTextAlignment(.center)
                Spacer()
            }
            
            VStack {
                HStack {
                    Spacer()
                    Text(artist.identity)
                    Spacer()
                }
                if artist.LCSArtist == false{
                    HStack {
                        Spacer()
                        Text(artist.age).font(.body)
                        Spacer()
                    }
                }
                
            }
           
            
            
            
            VStack {
                Text("General Information")
                    .font(.title3)
                    .bold()
                    .padding([.top, .leading, .bottom])
                
                Text(artist.infor).padding(.horizontal)
                    .lineLimit(nil).fixedSize(horizontal: false, vertical: true)
            }
            
            if artist.artistStatement.count != 0 {
                VStack {
                    
                    Text("Artist Statement")
                        .font(.title3)
                        .bold()
                        .padding([.top, .leading, .bottom])
                    
                    Text(artist.artistStatement).padding(.horizontal)
                        .lineLimit(nil).fixedSize(horizontal: false, vertical: true)
                }
            }
            
            VStack {
                Text("Artworks Created by This Artist")
                    .font(.title3)
                    .bold()
                    .padding([.top, .leading, .bottom])
                
                ForEach(getFilteredArtwork(artist: artist.name)) {
                    
                    artwork in
                    
                    
                    NavigationLink(destination: ArtworkDetail(artwork: artwork)) {
                            
                            VStack {
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
                                   
                                    
                                    VStack(alignment: .leading) {
                                        Text(artwork.name)
                                            .foregroundColor(.black)
                                        Text(artwork.artist)
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                    }
                                    
                                    Spacer()
                                }.padding(.horizontal)
                                Divider()
                            }
                            
                        }
                    
                }
            }
            
            
        }
        .navigationTitle(artist.name)
        .navigationBarHidden(isNavigationBarHidden)
        .onTapGesture {
            isNavigationBarHidden.toggle()
        }
        
    }
    
    func getFilteredArtwork(artist: String) -> [Artwork] {
        var filteredArtwork: [Artwork] = []
        for artwork in allArtworks {
            if artwork.artist == artist {
                filteredArtwork.append(artwork)
            }
        }
        return filteredArtwork
    }
    
}




struct ArtistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArtistDetailView(artist: Artist.testArtist)
        }
    }
}

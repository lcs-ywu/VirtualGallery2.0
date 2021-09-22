//
//  SearchView.swift
//  VirtualGallery
//
//  Created by Chen, Sihan on 2021-05-30.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String
    @Binding var showing: Bool
    @EnvironmentObject var artworks: ArtworkStore
    @State var shouldAnimate = true
    
    var body: some View {
        NavigationView{
            VStack {
                SearchBarView(text: $searchText)
                if searchText != "" {
                    Form {
                        List {
                            Section(header: Text("Artworks").foregroundColor(.black)) {
                                ForEach(filterArtworks(searchText: searchText, list: artworks.artworks)) { artwork in
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
//                                            Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                        }.frame(width: 310, height: 50, alignment: .center)
                                    }
                                }
                            }
                        }
                    }.toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Text("Cancel").onTapGesture {
                                showing = false
                            }
                        }
                    }
                }
                
                //            }
                else {
                    Form {
                        List {
                            Section(header: Text("Artworks").foregroundColor(.black)) {
                                ForEach(artworks.artworks) { artwork in
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
//                                            Image(systemName: "chevron.right").resizable().frame(width: 6, height: 13).padding()
                                        }.frame(width: 310, height: 50, alignment: .center)
                                    }
                                }
                            }
                        }
                    }.edgesIgnoringSafeArea(.all)
                    //                .navigationTitle("Search")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Cancel", action: {
                                self.showing = false

                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)

                        })
                        }
                    }
                }
            }
        }.ignoresSafeArea()
    }
}
func filterArtworks(searchText: String, list artworkStore: [Artwork]) -> [Artwork] {
    
    if searchText.isEmpty {
        return artworkStore
    }
    var presentArtworks: [Artwork] = []
    for artwork in artworkStore {
        if artwork.name.lowercased().contains(searchText.lowercased()) {
            
            presentArtworks.append(artwork)
        }
    }
    return presentArtworks
}




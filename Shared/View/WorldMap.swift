//
//  WorldMap.swift
//  WorldMap
//
//  Created by James Wu on 2021-09-01.
//

import MapKit
import SwiftUI

struct WorldMap: View {
    
    @EnvironmentObject var store: ArtworkStore
   
    @State private var shouldAnimate = true
    //Centre on LCS, wide enough to show most of eastern North America
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    
    var body: some View {
        
        ZStack{
            
            Map(coordinateRegion: $region, annotationItems: store.artworks) { artwork in
                
                
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: artwork.latitude, longitude: artwork.longitude)) {
                    
                    // Extension: Use latitude and longitude of 0 top represent onDisplay == false
//                    if artwork.onDisplay == true && artwork.latitude != 44.43922 && artwork.longitude != -78.26571 {
//                        NavigationLink(destination: ArtworkDetail(artwork: artwork))
//                        {
//                            if #available(iOS 15.0, *) {
//
//                                AsyncImage(url: URL(string: urlDictionary[artwork.name] ??  "https://www.russellgordon.ca/vg/%E5%8D%95%E9%9D%A2%E9%95%9C.imageset/%E5%8D%95%E9%9D%A2%E9%95%9C.jpg")){
//                                    image in
//
//                                    image
//                                        .resizable()
//                                        .cornerRadius(10)
//                                        .scaledToFit()
//                                        .frame(width:80, height:80)
//        //                                .shadow(radius:3)
//
//                                } placeholder: {
//                                    Placeholder(shouldAnimate: $shouldAnimate)
//
//                            }
//
//                            } else {
//                                // Fallback on earlier versions
//                                Text("Image not supported with ios 14 or less")
//                            }
//                        }
//                        } else
                    if artwork.onDisplay == true && artwork.latitude == 44.43922 && artwork.longitude == -78.26571 {
                        NavigationLink(destination: LCSArtCommunityView()) {
                      
                           Image("LCS").resizable()
                                .cornerRadius(10)
                                .scaledToFit()
                                .frame(width:100, height:100)
                                
                        }
                        
                    }
                    
                }
            }
            
        }.edgesIgnoringSafeArea(.all)
            //How to make navgation title white?
            .navigationTitle("Map".uppercased())
        
    }
}
// Extension: Use APIs of museums around Canada and the US rather than seperated artworks

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WorldMap()
        }
        
    }
}



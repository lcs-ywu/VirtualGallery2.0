//
//  MuseumDetailView.swift
//  MuseumDetailView
//
//  Created by Sihan Chen on 2021/9/2.
//

import SwiftUI

struct MuseumDetailView: View {
    @EnvironmentObject var store: ArtworkStore
    
    var museum: Museum
    
    var body: some View {
        ScrollView {
            VStack {
                Image(museum.name)
                    .resizable()
                    .scaledToFit()
                Text("Introduction")
                    .bold()
                    .font(.title)
                    .foregroundColor(.LCSGreen)
                
                Text(museum.description).font(.title2).padding().fixedSize(horizontal: false, vertical: true)
            
                Text("Displayed Artworks").bold().font(.title).foregroundColor(.LCSGreen)
            }
          
            
            
            
            List(museum.artworkNames, id:\.self) {
                name in
                NavigationLink(destination: ArtworkDetail(artwork: store.getArtworkWithName(name: name))) {
                    
                    HStack {
                        Image(name).resizable().cornerRadius(10).scaledToFit().frame(width: 100, height: 100)
                        
                        VStack(alignment: .leading) {
                            Text(name)
                            Text(store.getArtworkWithName(name: name).artist)
                                .font(.subheadline)
                        }
                            
                    }
                }
            }.frame(height: 300)
        }
    }
}

struct MuseumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MuseumDetailView(museum: Museum(name: "Louvre Museum", description: "The Louvre, or the Louvre Museum, is the world's second-largest art museum and a historic monument in Paris, France, and is best known for being the home of the Mona Lisa. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.", latitude: 48.861111, longitude: 2.336389, artworkNames: ["Mona Lisa","The Embarkation for Cythera", "Pierrot"]))
    }
}

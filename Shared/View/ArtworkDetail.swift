//
//  ArtworkDetail.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-01-26.
//

import SwiftUI


struct ArtworkDetail: View {
    @EnvironmentObject var store: ArtworkStore
    @State private var isNavigationBarHidden = false
    var artwork: Artwork
    
    @State private var showingAddComment = false
    
    // For the spinning wheel on top of the view when the image is loading
    @State private var shouldAnimate = true
    
    // Give a wrong url to trigger the code after
    @State private var validURL = URL(string: "https://www.russellgordon.ca/vg/Ocean%20Bliss.imageset/Ocean%20Bliss.jpg")
    
    //Magnification scale for the gesture
    
    @GestureState var scale: CGFloat = 1.0
    
    //    @State var isFavourite: Bool
    // Used for the sharing button on the top right
    func shareArtwork() {
        // Can this be store to somewhere to reduce running time?
        let url = URL(string: urlDictionary[artwork.name]!)
        let avc = UIActivityViewController(activityItems: [url ?? URL(string: "https://www.russellgordon.ca")!], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController!.present(avc, animated: true, completion: nil)
    }
    
    
    // Fucntions to get recommanded artworks by artists and medium
    // Need to debug the function.
    
    
    
    
    var body: some View {
        let relatedArtworks = CreateRecommendStoreByArtist(artist: artwork.artist)
        
        ScrollView {
            
            
            
            if #available(iOS 15.0, *) {
                AsyncImage(url: URL(string: urlDictionary[artwork.name] ??  "https://www.russellgordon.ca/vg/%E5%8D%95%E9%9D%A2%E9%95%9C.imageset/%E5%8D%95%E9%9D%A2%E9%95%9C.jpg")) {
                    image in
                    
                    image
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(scale)
                        .gesture(MagnificationGesture()
                                    .updating($scale, body: { (value, scale, trans) in
                            scale = value.magnitude
                        }))
                    
                    
                } placeholder: {
                    
                    Placeholder(shouldAnimate: $shouldAnimate)
                }
                
            } else {
                // Fallback on earlier versions
                Text("Image not supported with ios 14 or less")
            }
            
            
            
            HStack {
                Spacer()
                Text(artwork.name).font(.title).bold().multilineTextAlignment(.center)
                Spacer()
            }
            
            
            Spacer()
            
            VStack{
                
                ZStack {
                    HStack {
                        Spacer()
                        
                        
                        Image(systemName: artwork.isFavourite ?  "star.fill" : "star").resizable().frame(width: 20, height: 20)
                        
                            .onTapGesture {
                                store.toggle(artwork)
                                
                                if artwork.isFavourite {
                                    store.add(artwork)
                                } else {
                                    store.remove(artwork)
                                }
                                
                            }
                        
                    }
                    HStack{
                        
                        Spacer()
                        Text(artwork.artist)
                            .italic()
                            .font(.body)
                            .bold()
                        
                        Spacer()
                        
                    }
                }
                
                HStack {
                    Spacer()
                    Text(artwork.medium).font(.body)
                    //                        .italic()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Created in " + String(artwork.yearCreated)).font(.body)
                    //                        .italic()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Currently stored in \(artwork.museum)").font(.body).multilineTextAlignment(.center)
                    //                        .italic()
                    Spacer()
                }
                //                Text("Created in \(artwork.yearCreated)")
                //                    .font(.body)
                //                    .padding(.bottom)
                
            }
            .padding(.horizontal)
            
            if !artwork.description.isEmpty {
                HStack {
                    Text("General Information")
                        .font(.title3)
                        .bold()
                        .padding([.top, .leading, .bottom])
                    Spacer()
                }
                
                HStack {
                    Text(artwork.description).padding(.horizontal)
                        .font(.subheadline)
                    
                    // Autoshrink?
                        .minimumScaleFactor(0.01)
                    
                    Spacer()
                }
                
                
            }
            
            if artwork.more.count != 0 {
                HStack {
                    Text("Did you know?")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Text(artwork.more).padding(.horizontal)
            }
            
            HStack{
                Text("Other Artworks you might be Interested")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
            }.padding(.horizontal)
            
            
            
            HStack {
                ForEach(relatedArtworks) {
                    artwork in
                    
                    if relatedArtworks.count >= 2 {
                        
                        
                    
                            if #available(iOS 15.0, *) {
                                AsyncImage(url: URL(string: urlDictionary[artwork.name] ??  "https://www.russellgordon.ca/vg/%E5%8D%95%E9%9D%A2%E9%95%9C.imageset/%E5%8D%95%E9%9D%A2%E9%95%9C.jpg")) {
                                    image in
                                    
                                    image
                                        .resizable()
                                        .scaledToFit()
                                } placeholder: {
                                    Placeholder(shouldAnimate: $shouldAnimate)
                                }
                            }
                        
                        
                        
                        
                        
                    } else if relatedArtworks.count == 1 {
                        
                        
                            if #available(iOS 15.0, *) {
                                AsyncImage(url: URL(string: urlDictionary[artwork.name] ??  "https://www.russellgordon.ca/vg/%E5%8D%95%E9%9D%A2%E9%95%9C.imageset/%E5%8D%95%E9%9D%A2%E9%95%9C.jpg")) {
                                    image in
                                    
                                    image
                                        .resizable()
                                        .scaledToFit()
                                } placeholder: {
                                    Placeholder(shouldAnimate: $shouldAnimate)
                                }
                            }
                        
                        
                    }
                    else {
                        Text("Sorry, this is the only artwork from this artist in our collection.")
                    }
                }
            }
            
            
        }.navigationBarTitle(artwork.name)
        //        .edgesIgnoringSafeArea(.top)
        // Consider smooth transition?
            .navigationBarHidden(isNavigationBarHidden)
            .onTapGesture {
                isNavigationBarHidden.toggle()
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: shareArtwork) {
                        Image(systemName: "square.and.arrow.up")
                    }
                    
                }
            }
            .onAppear {
                if store.checkIfArtworkIsFavourite(artwork) == true {
                    if !artwork.isFavourite {
                        store.toggle(artwork)
                    }
                } else {
                    if artwork.isFavourite {
                        store.toggle(artwork)
                    }
                }
            }
        
        
    }
}


//struct ArtworkDetail_Previews: PreviewProvider {
//    static var previews: some View {
//
//            ArtworkDetail(artwork: Artwork(name: "James Wu", artist: "James Wu", yearCreated: 2988, description: "", more: "", onDisplay: false, museum: "LCS Gallery", latitude: 0, longitude: 0, medium: "Oil on canvas", LCSart: true))
//
//    }
//}
// Referenced from https://stackoverflow.com/questions/57035746/how-to-scale-text-to-fit-parent-view-with-swiftui

struct FitSystemFont: ViewModifier {
    var lineLimit: Int
    var minimumScaleFactor: CGFloat
    var percentage: CGFloat
    
    func body(content: Content) -> some View {
        GeometryReader { geometry in
            content
                .font(.system(size: min(geometry.size.width, geometry.size.height) * percentage))
                .lineLimit(self.lineLimit)
                .minimumScaleFactor(self.minimumScaleFactor)
                .position(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY)
        }
    }
}



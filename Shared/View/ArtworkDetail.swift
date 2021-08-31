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
    @State private var shouldAnimate = false
    
    // Give a wrong url to trigger the code after
    @State private var validURL = URL(string: "https://www.russellgordon.ca/vg/Ocean%20Bliss.imageset/Ocean%20Bliss.jpg")
    
//    @State var isFavourite: Bool
    // Used for the sharing button on the top right
    func shareArtwork() {
        // Can this be store to somewhere to reduce running time?
        let url = findValidURL(name: artwork.name)
        let avc = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController!.present(avc, animated: true, completion: nil)
    }
    
    
    var body: some View {
       
        ScrollView {
    
            
           
            if #available(iOS 15.0, *) {
                AsyncImage(url: URL(string: urlDictionary[artwork.name] ??  "https://www.russellgordon.ca/vg/%E5%8D%95%E9%9D%A2%E9%95%9C.imageset/%E5%8D%95%E9%9D%A2%E9%95%9C.jpg")) {
                    image in
                    
                    image
                        .resizable()
                        .scaledToFit()
                    
                } placeholder: {
                    ActivityIndicator(shouldAnimate: $shouldAnimate).frame(width: 200, height: 60, alignment: .center)
                    Placeholder()
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
        HStack {
            Spacer()
            
            Image(systemName: artwork.isFavourite ?  "star" : "star.fill").onTapGesture {
                store.toggle(artwork)
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
}
        .edgesIgnoringSafeArea(.top)
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
        
        
        
    }
}

//struct ArtworkDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView{
//            ArtworkDetail(artwork: Artwork.example, isFavourite: true) //, CommentStore: testCommentStore
//        }
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


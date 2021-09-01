//
//  LCSArtCommunity.swift
//  LCSArtCommunity
//
//  Created by James Wu on 2021-09-02.
//

import SwiftUI

struct LCSArtCommunityView: View {
    @EnvironmentObject var store: ArtworkStore
    
    @State private var shouldAnimate = true
    
    var body: some View {
        ScrollView{
            VStack {
                Group {
                    Image("LCS").resizable().scaledToFit()
                    Text("Visual Arts")
                        .bold().font(.title)
                        .foregroundColor(Color(red: 0/255, green: 101/255, blue: 82/255, opacity: 1))
                    Text("The art room has a pleasant and friendly atmosphere and students make good use of it to pursue their work in drawing, painting, printmaking, and photography. The ceramics facility is also available to the students where beginners and experienced potters can try their hand at the wheel. Students who create artwork have many opportunities to display their work in the school, in the display areas throughout the classroom block, Learning Commons foyer and the Richard Hayman Gallery. Students are also exposed to artwork through attending art tours in Peterborough.").font(.title2).padding().fixedSize(horizontal: false, vertical: true)
                    
                    Text("Student Artworks").bold().font(.title).foregroundColor(Color(red: 0/255, green: 101/255, blue: 82/255, opacity: 1))
                }
                
                
                
                List(store.artworksOnDisplay) { artwork in
                    //                    if artwork.LCSart == true {
                    NavigationLink(destination: ArtworkDetail(artwork: artwork))
                    {
                        HStack{
                            
                            if #available(iOS 15.0, *) {
    
                                AsyncImage(url: URL(string: urlDictionary[artwork.name] ??  "https://www.russellgordon.ca/vg/%E5%8D%95%E9%9D%A2%E9%95%9C.imageset/%E5%8D%95%E9%9D%A2%E9%95%9C.jpg")){
                                    image in
                                    
                                    image
                                        .resizable()
                                        .cornerRadius(10)
                                        .scaledToFit()
                                        .frame(width:100, height:100)
        //                                .shadow(radius:3)
                                    
                                } placeholder: {
                                    Placeholder(shouldAnimate: $shouldAnimate)
                                }
                                
                            } else {
                                // Fallback on earlier versions
                                Text("Image not supported with ios 14 or less")
                            }
                            
                            VStack(alignment: .leading) {
                                Text(artwork.name)
                                Text(artwork.artist)
                                    .font(.subheadline)
                            }
                        }
                    }
                    //                    }
                    
                }.frame(height: 300)
                
                HStack {
                    Text("The Peter Dalglish Awards").bold().font(.title).foregroundColor(Color(red: 0/255, green: 101/255, blue: 82/255, opacity: 1)).padding(.horizontal)
                    Spacer()
                }
                
                Spacer()
                Text("""
The purpose of the Peter Dalglish Art Award is to inspire, encourage and recognize artistic talent at Lakefield College School by promoting promising young artists and their future contributions to art in Canada and beyond. In recognition of their father's affection for Lakefield College School, his love of the arts and his commitment to nurturing and supporting young artists, Geordie Dalglish ’89, and Kim Dalglish Abell, have established the Peter Dalglish Art Award funded by an endowed gift made in 2014.
""").font(.title2).padding()
                
                HStack {
                    Text("Meet the Dalglish Recipients!").bold().font(.title).foregroundColor(Color(red: 0/255, green: 101/255, blue: 82/255, opacity: 1)).padding()
                    Spacer()
                }
                
                peterDalglishEntry(artistName: "John Huth '18", year: "2017", imageName: "PDAA 2017")
                
                peterDalglishEntry(artistName: "Jessie Pan '16", year: "2016", imageName: "PDAA 2016")
                
                
               
                
                
            }
        }
    }
}


struct LCSArtCommunityView_Previews: PreviewProvider {
    static var previews: some View {
        LCSArtCommunityView()
    }
}


private func peterDalglishEntry(artistName: String, year: String, imageName: String) -> some View {
    Group {
        VStack {
            HStack {
                Text(year).font(.title).bold().foregroundColor(Color(red: 0/255, green: 101/255, blue: 82/255, opacity: 1)).padding()
                Spacer()
            }
            
            HStack {
                Spacer()
                Image(imageName).resizable().scaledToFit()
                Spacer()
            }
            
            Text(artistName).font(.title2).bold().padding().multilineTextAlignment(.center)
            
        }
    }
}

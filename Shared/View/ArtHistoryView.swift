//
//  ArtHistoryView.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-22.
//

import SwiftUI

struct ArtHistoryView: View {
    
    @State private var isNavigationBarHidden = false
    @State private var shouldAnimate = true
    // Move this outside of body?
    let store = Periods()
    
    private func artHistoryText(name: String, color: Color) -> some View {
        return  VStack {
            Text(name).bold().font(.system(.title2, design: .serif))
            Text(name).bold().font(.system(.title3, design: .serif))
            
        }.padding(.leading).foregroundColor(color)
    }
    var body: some View {
        
                
        ScrollView{
            Group {
                Image("Art History").resizable().scaledToFit()
                Text("A Brief Art History").bold().foregroundColor(.black).font(.system(.largeTitle, design: .serif)).padding(.all)
            }
            
            
            ForEach(store.periods) { period in
                
                NavigationLink(destination: ArtHistoryDetailView(period: period)){
                    ZStack {
                        Image("Frame").resizable().scaledToFit().padding(.all)
                        // Need to make the frame fixed size
                        // Can't replace this with async as it causes typecheck error
                        if #available(iOS 15.0, *) {
                            AsyncImage(url: URL(string: urlDictionary[period.name] ??  "https://www.russellgordon.ca/vg/%E5%8D%95%E9%9D%A2%E9%95%9C.imageset/%E5%8D%95%E9%9D%A2%E9%95%9C.jpg")) {
                                image in
                                
                                image
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 300, height: 300, alignment: .center)
                                   
                                
                            } placeholder: {
                                Placeholder(shouldAnimate: $shouldAnimate)
                            }
                            
                        } else {
                            // Fallback on earlier versions
                            Text("Image not supported with ios 14 or less")
                        }
                        
                        if period.name != "Baroque" && period.name != "Abstract Expressionism" {
                            artHistoryText(name:period.name, color: .black)
                        } else {
                            artHistoryText(name:period.name, color: .white)
                        }
                        
                    }
                }
            }
            
            
            
            Group {
                HStack {
                    Text("""
                    Notes: This introduction to art history only contains mostly periods in Western art history, the significance of other cultures will be added soon.
                    """).font(.system(.body, design: .serif)).padding(.all)
                    Spacer()
                }.padding(.leading, 2)
                
                HStack {
                    Text("""
                    Reference from: https://www.invaluable.com/blog/art-history-timeline/
                    """).font(.system(.body, design: .serif)).padding(.all)
                    Spacer()
                }.padding(.leading, 2)
            }
           
            
            
           
            
            
        }.ignoresSafeArea()
        .navigationBarHidden(isNavigationBarHidden)
        .onTapGesture {
            isNavigationBarHidden.toggle()
        }
        //        .background(Image("Art History4").resizable().scaledToFill().ignoresSafeArea())
    }
}

struct ArtHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        ArtHistoryView()
    }
}

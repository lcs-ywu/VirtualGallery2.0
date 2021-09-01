//
//  ArtHistoryView.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-22.
//

import SwiftUI

struct ArtHistoryView: View {
    @State private var isNavigationBarHidden = false
    var body: some View {
        
        let store = Periods()
        
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
                        Image(period.name).resizable().clipShape(Circle()).frame(width: 300, height: 300, alignment: .center)
                        if period.name != "Baroque" && period.name != "Abstract Expressionism" {
                            VStack {
                                Text(period.name).bold().font(.system(.title2, design: .serif))
                                Text(period.time).bold().font(.system(.title3, design: .serif))
                                
                            }.padding(.leading).foregroundColor(.black)
                        } else {
                            VStack {
                                Text(period.name).bold().font(.system(.title2, design: .serif))
                                Text(period.time).bold().font(.system(.title3, design: .serif))
                                
                            }.padding(.leading).foregroundColor(.white)
                        }
                        
                    }
                }
            }
            
            
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

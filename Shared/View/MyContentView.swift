//
//  MyContentView.swift
//  VirtualGallery (iOS)
//
//  Created by Chen, Sihan on 2021-05-28.
//

import SwiftUI

struct MyContentView: View {
    
    func createConfiguration() -> CDSideMenuConfiguration {
        #warning("Step 2 (required): Configure your CDSideMenu")
        
        var menuItems = [CDSideMenuItem]()
        menuItems.append(CDSideMenuItem(title: "Art Concepts", sfImage: "paintpalette", view: AnyView(ArtworksList())))
        
        menuItems.append(CDSideMenuItem(title: "Art At LCS", sfImage: "person", view: AnyView(ArtistsList())))
        
        menuItems.append(CDSideMenuItem(title: "Art History", sfImage: "house", view: AnyView(ArtHistoryView())))
        
        menuItems.append(CDSideMenuItem(title: "Museums", sfImage: "map", view: AnyView(WorldMap())))
        
        menuItems.append(CDSideMenuItem(title: "About Us", sfImage: "tortoise", view: AnyView(Contributors())))
        
        menuItems.append(CDSideMenuItem(title: "My Favourites", sfImage: "star", view: AnyView(Favourites())))
        
        do { /// You must setup your left menu in a do-catch as the Configurator will let you know if there is anything wrong with your configuration
           
            /// Choice #1 : Default configuration
            //return try CDSideMenuConfiguration(accountViewHidden: true, menuItems: menuItems)
            
            /// Choice #2 : Chris's favorite configuration
            return try CDSideMenuConfiguration(navigationBarHidden: false,
                                               accountViewHidden: false,
                                               menuBackgroundColor: .cdDarkGray
//                                               ,
//                                               menuForegroundColor: .white,
//                                               viewsBackgroundColor: .cdOffGreen
                                               ,
                                               menuFont: Font.system(.body, design: .rounded),
                                               menuButtonSize: 28,
                                               menuSizeFactor: 1.1,
                                               menuItems: menuItems
                                               ,
                                               userData: CDUserData(userName: "Chris", imageUrl: "turtlerock")
            )
            
        }
        catch {
            print("CDSideMenu configuration failed. Please check your error below:")
            print(error.localizedDescription)
            print("CDSideMenu Default configuration loaded instead.")
            return try! CDSideMenuConfiguration(accountViewHidden: true, menuItems: menuItems)
        }
    }
    
    let backgrounds = ["background1", "background2", "background3", "background4", "background5", "background6", "background7"]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 30) {
                VStack {
                    Spacer()
                    Text("ᐯIᖇTᑌᗩᒪ GᗩᒪᒪEᖇY")
                        .font(.system(.largeTitle))
                        .bold()
                        .multilineTextAlignment(.center)
                        .font(.system(size: 20))
                        .padding(.bottom)
                        .colorInvert()
                    Text("𝙔𝙤𝙪𝙧 𝙋𝙚𝙧𝙨𝙤𝙣𝙖𝙡 𝘼𝙧𝙩 𝙂𝙖𝙡𝙡𝙚𝙧𝙮").font(.system(.title2))
                        .bold()
                        .multilineTextAlignment(.center)
                        .font(.system(size: 20))
                        .colorInvert()
                    Spacer()
                    Text("Tap To Continue")
                        .font(.system(.title2,design: .serif))
                        .bold()
                        .colorScheme(.light)
                        .padding(.all)
                        .colorInvert()
                        .foregroundColor(.secondary)
                       
                }
                
                
                #warning("Step 3 (required): Create a NavigationLink to push the CDSideMenuMainView")
               
            }
//            .navigationBarTitle("Virtual Gallery", displayMode: .inline)
            .background(
                NavigationLink(destination: CDSideMenuMainView()
                    .environmentObject(createConfiguration()), label: {
                        Image(backgrounds.randomElement()!)
                })
                    .ignoresSafeArea(.all)
            )
    }
}
}

//struct MyContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyContentView()
//    }
//
//}

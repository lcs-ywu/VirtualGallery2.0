//
//  OnboardingViewThree.swift
//  OnboardingViewThree
//
//  Created by Sihan Chen on 2021-09-14.
//

import SwiftUI

struct OnboardingViewThree: View {
    var body: some View {
        if #available(iOS 15.0, *) {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).background(.yellow)
                Button(action: {
                    ArtworksList()
                }) {
                    Text("Continue")
                }
            }
              
                
                
            
            

            
        } else {
            // Fallback on earlier versions
            Text("Hello, World")
        }
        
    }
}

struct OnboardingViewThree_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewThree()
    }
}

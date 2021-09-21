//
//  OnboardingViewThree.swift
//  OnboardingViewThree
//
//  Created by Sihan Chen on 2021-09-14.
//

import SwiftUI

struct OnboardingViewThree: View {
    var body: some View {
        ZStack{
            Image("Onboarding3").resizable().scaledToFill()
                .ignoresSafeArea()
            
            if #available(iOS 15.0, *) {
                VStack{
                    Text("""
     Try out more functions such
     as save your favourite artworks
     and tour around museums around the world
     """).bold().foregroundColor(.white).font(.system(.title, design: .serif)).padding(.horizontal).multilineTextAlignment(.center)
                    
                    Image(systemName: "checkmark.circle").resizable().frame(width: 50, height: 50).colorInvert()
                }
            } else {
                // Fallback on earlier versions
                Text("Fromat not supported")
            }
            
        }
    }
}

struct OnboardingViewThree_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewThree()
    }
}

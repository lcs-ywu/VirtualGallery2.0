//
//  OnbordingViewOne.swift
//  OnbordingViewOne
//
//  Created by Sihan Chen on 2021-09-14.
//

import SwiftUI

struct OnboardingViewOne: View {
    var body: some View {
        ZStack{
            Image("Onboarding1").resizable().scaledToFill()
                .ignoresSafeArea()
            
            if #available(iOS 15.0, *) {
                VStack{
                    Text("""
     Get to know everything
     you will need with
     Virtual Gallery
     
     Presented by LCS
     """).bold().foregroundColor(.white).font(.system(.title, design: .serif)).padding(.horizontal).multilineTextAlignment(.center)
                    
                    Image(systemName: "arrow.right.circle").resizable().frame(width: 50, height: 50).colorInvert()
                }
            } else {
                // Fallback on earlier versions
                Text("Fromat not supported")
            }
            
        }
        
    }
    
    
}


struct OnboardingViewOne_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewOne()
    }
}

//
//  OnboardingViewTwo.swift
//  OnboardingViewTwo
//
//  Created by Sihan Chen on 2021-09-14.
//

import SwiftUI

struct OnboardingViewTwo: View {
    var body: some View {
        ZStack{
            Image("Onboarding2").resizable().scaledToFill()
                .ignoresSafeArea()
            
            if #available(iOS 15.0, *) {
                VStack{
                    Text("""
     Explore the LCS art community
     Get to know all about
     our artists and their works
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

struct OnboardingViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewTwo()
    }
}

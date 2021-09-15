//
//  Main.swift
//  Main
//
//  Created by Sihan Chen on 2021-09-14.
//

import SwiftUI

struct Main: View {
    @State var currentIndex = 0
    var body: some View {
        GeometryReader { geometry in
            VStack {
                TabView(selection: $currentIndex,
                        content:  {
                            OnboardingViewOne().tag(0)
                            OnboardingViewTwo().tag(1)
                            OnboardingViewThree().tag(2)
                        })
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
        }
        
        
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}

//
//  OnbordingViewOne.swift
//  OnbordingViewOne
//
//  Created by Sihan Chen on 2021-09-14.
//

import SwiftUI

struct OnboardingViewOne: View {
    var body: some View {
        if #available(iOS 15.0, *) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).background(.blue)
        } else {
            // Fallback on earlier versions
            Text("Hello, World!")
        }
    }
}

struct OnboardingViewOne_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewOne()
    }
}

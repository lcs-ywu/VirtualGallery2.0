//
//  ActivityIndicator.swift
//  ActivityIndicator
//
//  Created by Sihan Chen on 2021/8/20.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    @Binding var shouldAnimate: Bool
    //
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        // Create UIActivityIndicatorView
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView,
                      context: Context) {
        // Start and stop UIActivityIndicatorView animation
        if self.shouldAnimate {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}



//
//  Placeholder.swift
//  Placeholder
//
//  Created by James Wu on 2021-09-01.
//

import SwiftUI

struct Placeholder: View {
    @Binding var shouldAnimate: Bool
    
    var body: some View {
        ActivityIndicator(shouldAnimate: $shouldAnimate)
    }
}

struct Placeholder_Previews: PreviewProvider {
    static var previews: some View {
        Placeholder(shouldAnimate: .constant(true))
    }
}

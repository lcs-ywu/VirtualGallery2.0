//
//  ElementsOfArt.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-30.
//

import SwiftUI

struct ElementsOfArt: View {
    var body: some View {
        ScrollView{
            Group{
                Image("Elements of Art").resizable().scaledToFill()
                HStack {
                    Spacer()
                    Text("Elements of Art").bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif))
                    Spacer()
                }
                
                HStack {
                    Text(" - A Cornell Note").font(.system(.title2, design: .serif)).padding(.all)
                }
                Spacer()
                
                HStack {
                    Text("Line").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        Used to define space, contours, and outlines, suggest mass and volume.

                        It may be a continuous mark made on a surface with a pointed tool or implied by the edges of shapes and forms.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Line").resizable().scaledToFill()
                Spacer()
            }
            
            Group{
                HStack {
                    Text("Shape").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                HStack {
                    Text("""
                        An enclosed space defined by other elements such as line, colour, and texture.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Shape").resizable().scaledToFill()
                Spacer()
            }
            
            Group{
                HStack {
                    Text("Colour").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                HStack {
                    Text("""
                        Colour has three properties; hue, value, and intensity.

                        Colour is the character of surfaces created by the response of vision to wavelengths of reflected light.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Colour").resizable().scaledToFill()
                Spacer()
            }
            
            Group{
                HStack {
                    Text("Space").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                HStack {
                    Text("""
                        Space indicates the areas between, around, above, below, or within something.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Space").resizable().scaledToFill()
                Spacer()
            }
            
            Group{
                HStack {
                    Text("Value").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                HStack {
                    Text("""
                        The varying degrees of light and dark.
                        Often referred to as the value scale.
                        Grey scale or colour.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Value").resizable().scaledToFill()
                Spacer()
            }
            
            Group{
                HStack {
                    Text("Form").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                HStack {
                    Text("""
                        Refers to an object that appears 3-dimensional and has volume such as a cube, sphere, pyramid, or cylinder.

                        Shape + Value = Form
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Form").resizable().scaledToFill()
                Spacer()
            }
            
            Group{
                HStack {
                    Text("Texture").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                HStack {
                    Text("""
                        The surface quality of an artwork usually felt through the sense of touch

                        Texture may also be implied. How something looks like it might feel.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Texture").resizable().scaledToFill()
                Spacer()
            }
            
        }

    }
}

struct ElementsOfArt_Previews: PreviewProvider {
    static var previews: some View {
        ElementsOfArt()
    }
}

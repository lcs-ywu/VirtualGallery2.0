//
//  PrinciplesOfDesign.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-30.
//

import SwiftUI

struct PrinciplesOfDesign: View {
    var body: some View {
        ScrollView{
            Group{
                HStack {
                    Text("The Principles of Design").bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    
                    Spacer()
                }
                Image("Principles of Design").resizable().scaledToFill()
            }
            Group{
            
                HStack {
                    Text("Balance").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        Creating a visual balance by
                        using the elements of
                        design equally:
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Balance 1").resizable().scaledToFill()
                HStack {
                    Text("""
                        Informal balance: Asymmetrical.
                        Different on either side but
                        balanced using shape and colour
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Balance 2").resizable().scaledToFill()
                HStack {
                    Text("""
                        Formal balance: Symmetrical.
                        The same on both sides.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Balance 3").resizable().scaledToFill()
                HStack {
                    Text("""
                        Radial balance: Symmetry
                        extending from the centre in a
                        circular manner.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
            }
            Group{
                HStack {
                    Text("Variety").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        Combining many visual
                        elements to create interest
                        and complex designs.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                Image("Variety").resizable().scaledToFill()
            }
            Group{
                HStack {
                    Text("Harmony").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        A balanced use of all
                        of the elements of
                        design. When the
                        entire composition is
                        pleasing to the
                        viewer’s eye.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                Image("Harmony-1").resizable().scaledToFill()
            }
            Group{
                HStack {
                    Text("Unity").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        The way the elements used
                        in an artwork appear to go
                        together to form a pleasing
                        composition. Can be
                        achieved by repeating the
                        elements of design - colour,
                        line, shape, etc.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                Image("Unity").resizable().scaledToFill()
            }
            Group{
                HStack {
                    Text("Emphasis").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        The effect of making certain
                        parts or shapes in an
                        artwork stand out.
                        Emphasis can be achieved
                        by using colour, line, shape,
                        etc.

                        The part of a composition
                        that stands out is called
                        the focal point
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Image("Emphasis").resizable().scaledToFill()
            }
            Group{
                HStack {
                    Text("Proportion").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        The relationship between
                        objects with respect to their
                        size, number, form, and
                        shape, and how the objects
                        relate to each other in a
                        composition
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                Image("Proportion").resizable().scaledToFill()
            }
            Group{
                HStack {
                    Text("Movement").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        The way elements of art
                        direct the viewer’s eyes
                        around a work of art.

                        OR

                        Creating a feeling of action
                        in a work of art.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                Image("Movement").resizable().scaledToFill()
            }
            Group{
                HStack {
                    Text("Repetition").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        Duplicating the same
                        object, shape, colour, etc. in
                        a work of art. Repetition
                        often creates a pattern.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                Image("Repetition").resizable().scaledToFill()
            }
            Group{
                HStack {
                    Text("Rhythm").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                    Spacer()
                }
                HStack {
                    Text("""
                        The repetition of a pattern
                        in a work of art. Created by
                        using colours, shapes,
                        symbols, lines, or motifs.
                        Rhythm is the way a work of
                        art feels.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                Image("Rhythm").resizable().scaledToFill()
            }
        }
    }
}

struct PrinciplesOfDesign_Previews: PreviewProvider {
    static var previews: some View {
        PrinciplesOfDesign()
    }
}

//
//  PostModernPrinciples.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-30.
//

import SwiftUI

struct PostModernPrinciples: View {
    var body: some View {
        ScrollView{
            Section {
                Group{
                    Image("Postmodern Principles").resizable().scaledToFill()
                    HStack {
                        Text("Introduction to the Postmodern Principles").bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                        
                        Spacer()
                    }
                    
                    
                    Spacer()
                    HStack {
                        Text("The Postmodern Principles of art are a set of principles designed to address themes identified in 21st century artworks.").font(.system(.title, design: .serif)).padding(.all)
                        
                        Spacer()
                    }
                    
                    
                    HStack {
                        Text("Appropriation").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    HStack {
                        Text("Appropriation is an artistic strategy in which the artist consciously borrows imagery from other artists, past or present, reworks it to some degree and then ‘re-presents’ the ideas and concepts from the original in a new way.").font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Typically, the act of appropriation is about paying homage to another artist, or criticising the worldview and beliefs that another artist (usually from the past) lived in.").font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    Image("Appropriation").resizable().scaledToFill()
                    HStack {
                        Text("""
                Mona Lisa.
                Original: Leonardo Da Vinci.
                Appropriation: Marcel Duchamp.
            """).font(.system(.body, design: .serif))
                        Spacer()
                    }
                }
                
                Group{
                    HStack {
                        Text("Juxtaposition").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Simply stated, juxtaposition means placing things side-by-side. In art this usually is done with the intention of bringing out a specific quality or creating an effect, particularly when two contrasting or opposing elements are used.").font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    Image("Juxtaposition").resizable().scaledToFill()
                    HStack {
                        Text("Object. Meret Oppenheim.").font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                        
                    }
                }
                
                Group{
                    HStack {
                        Text("Recontextualization").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                    To place (something, such as a literary or artistic work) in a different context.
                    """).font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    Image("Recontextualization").resizable().scaledToFill()
                    
                    HStack {
                        Text("Fountain. Marcel Duchamp.").font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                }
                
                Group{
                    HStack {
                        Text("Layering").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                    Reflective of the manner in which images have become cheap and disposable, layering refers to the over-exposure to images we commonly experience in the 21st century.

                    Physically or digitally layering images of varying transparency.
                    """).font(.system(.title, design: .serif)).padding(.all)
                            .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("Layering").resizable().scaledToFill()
                }
            }
            
            Section {
                Group{
                    HStack {
                        Text("Text & Image Interaction").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Learning not to demand the literal matching of verbal and visual signifiers, but rather to explore disjuncture between the two modes as a source of meaning and pleasure.").font(.system(.title, design: .serif)).padding(.all)
                        
                        Spacer()
                    }
                    
                    Image("Text & Image Interaction").resizable().scaledToFill()
                    
                    HStack {
                        Text("Untitled. Barbara Kruger.").font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                }
                
                Group{
                    HStack {
                        Text("Hybridity").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Artwork that combines new and emerging technologies to provide the viewer with a complex experience.").font(.system(.title, design: .serif)).padding(.all)
                        
                        Spacer()
                    }
                    
                    Image("Hybridity").resizable().scaledToFill().padding(.horizontal)
                    
                    HStack {
                        Text("The Rain Room. Random International.").font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                }

                Group{
                    HStack {
                        Text("Gazing").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                    Deals with how an audience views the people presented.

                    This concept is extended in the framework of feminist theory, where it can deal with how men look at women, how women look at themselves and other women, and the effects surrounding this.

                    The gaze can be characterised by who is doing the looking:
                    1. Spectator's gaze: the spectator who is viewing the text. This is often us, the audience of a certain text.

                    2. Intra-diegetic gaze: where one person depicted in the text who is looking at another person or object in the text, such as another character looking at another.

                    3. Extra-diegetic gaze: where the person depicted in the text looks at the spectator, such as an aside, or an acknowledgement of the fourth wall, or,

                    4. Camera's gaze: which is the gaze of the camera, and is often equated to the director's gaze.
                    """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        
                        Spacer()
                    }
                    
                    
                    Image("Gazing").resizable().scaledToFill()
                    
                    HStack {
                        Text("Olympia. Manet").font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                }

                Group{
                    HStack {
                        Text("Representing").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("U.S. urban street slang for proclaiming one’s identity and affiliations, representing, describes the strategy of locating one’s artistic voice within one’s personal history and culture of origin.").font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    Image("Representing").resizable().scaledToFill()
                    HStack {
                        Text("My Bed. Tracey Emin.").font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                }
            }
            
            
        }
    }
}

struct PostModernPrinciples_Previews: PreviewProvider {
    static var previews: some View {
        PostModernPrinciples()
    }
}

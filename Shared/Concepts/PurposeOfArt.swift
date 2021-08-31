//
//  PurposeOfArt.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-30.
//

import SwiftUI

struct PurposeOfArt: View {
    var body: some View {
        ScrollView {
            Section {
                Group {
                    HStack {
                        Text("The Purpose of Art")
                            .bold()
                            .foregroundColor(.black)
                            .font(.system(.largeTitle, design: .serif))
                            .padding()
                        
                        Spacer()
                    }
                    
                    
                    Spacer()
                    
//                    HStack {
//                        Text("Description goes here")
//                            .font(.system(.title, design: .serif))
//                            .padding()
//
//                        Spacer()
//                    }
                    
                    
                    HStack {
                        Text("Personal Function")
                            .bold()
                            .font(.system(.title, design: .serif))
                            .padding(.all)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            To express personal feelings.
                            Sometimes referred to as
                            “Artistic expression”.
                            """)
                            .font(.system(.title, design: .serif))
                            .padding(.all)
                        
                        Spacer()
                    }
                    
                    
                    Image("Personal Function")
                        .resizable()
                        .scaledToFill()
                    
                    HStack {
                        Text("""
                            "Kitchen Door with Esther."
                            by Christian Pflug, 1965.
                            """)
                            .font(.system(.body, design: .serif))
                            .padding()
                        
                        Spacer()
                    }
                    
                    
                }
                
                Group {
                    HStack {
                        Text("Social Function")
                            .bold()
                            .font(.system(.title, design: .serif))
                            .padding(.all)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("To reinforce or enhance the shared sense of identity of those in a family, community, civilization")
                            .font(.system(.title, design: .serif))
                            .padding(.all)
                        
                        Spacer()
                    }
                    
                    
                    Image("Social Function")
                        .resizable()
                        .scaledToFill()
                    
                    HStack {
                        Text("""
                            The History of Mexico by Diego Rivera, 1936.  Mural
                            """)
                            .font(.system(.body, design: .serif))
                            .padding()
                        
                        Spacer()
                    }
                }
                
                Group {
                    HStack {
                        Text("Spiritual Function")
                            .bold()
                            .font(.system(.title, design: .serif))
                            .padding(.all)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("To express spiritual beliefs about the destiny of life controlled by the force of a higher power.  May enforce shared beliefs of an individual or a human community.")
                            .font(.system(.title, design: .serif))
                            .padding(.all)
                        
                        Spacer()
                    }
                    
                    
                    Image("Spiritual Function")
                        .resizable()
                        .scaledToFill()
                    
                    HStack {
                        Text("""
                            The Creation of Adam by Michelangelo.
                            1508 - 1512.
                            """)
                            .font(.system(.body, design: .serif))
                            .padding()
                        
                        Spacer()
                    }
                }
                
                Group {
                    HStack {
                        Text("Physical Function")
                            .bold()
                            .font(.system(.title, design: .serif))
                            .padding(.all)
                        
                        Spacer()
                    }
                    
                    Text("Many objects have both physical and aesthetic duties. Art shares a responsibility for the “built environment”.")
                        .font(.system(.title, design: .serif))
                        .padding(.all)
                    
                    Image("Physical Function")
                        .resizable()
                        .scaledToFill()
                    
                    HStack {
                        Text("""
                            The Vietnam Veterans Memorial, by Maya Lin.  1982
                            """)
                            .font(.system(.body, design: .serif))
                            .padding()
                        
                        Spacer()
                    }
                }
                
                Group {
                    HStack {
                        Text("Educational Function")
                            .bold()
                            .font(.system(.title, design: .serif))
                            .padding(.all)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("Art meant to impart information.")
                            .font(.system(.title, design: .serif))
                            .padding(.all)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    

                    
                    Image("Educational Function")
                        .resizable()
                        .scaledToFill()
                    
                    HStack {
                        Text("""
                            The Vitruvian Man by Leonardo da Vinci c. 1490
                            """)
                            .font(.system(.body, design: .serif))
                            .padding()
                        
                        Spacer()
                    }
                }
                
                
            }
        }
        
    }
}

struct PurposeOfArt_Previews: PreviewProvider {
    static var previews: some View {
        PurposeOfArt()
    }
}

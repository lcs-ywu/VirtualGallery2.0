//
//  CreativeProcess.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-30.
//

import SwiftUI

struct CreativeProcess: View {
    var body: some View {
        ScrollView {
            Group {
                HStack {
                    Text("Creative Process").bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                Image("Doubt").resizable().scaledToFill()
                
                Spacer()
                HStack {
                    Text("Definitions").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                Spacer()
                HStack {
                    Text("Creative:").font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Text("""
                        1. “Relating to or involving the imagination or original ideas, especially in the production of an artistic work.” (adjective)

                        2. “A person who is creative, typically in a professional context.” (noun)
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                HStack {
                    Text("Artistic:").font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        1. “Having or revealing natural creative skill.” (adjective)
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
            
            Group {
                Image("Creative Process").resizable().scaledToFill()
                HStack {
                    Text("What is the Creative Process?").bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
            
                HStack {
                    Text("""
                        - Eight phases that artists or creative individuals endure while creating work.

                        - The phases may be repeated multiple times and in varied order.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                Image("Step One").resizable().scaledToFill()
                HStack {
                    Text("""
                        Step 1:
                        Challenging & Inspiring
                        """).bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        - Choosing or being given a challenge to respond to (e.g.; an assignment)

                        - Researching artwork, current events, videos etc. to become inspired for the challenge
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                Image("Step Two").resizable().scaledToFill()
                HStack {
                    Text("""
                        Step 2:
                        Imagining & Generating
                        """).bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        - Formulating ideas

                        - Brainstorming

                        - Developing inspiration into a vision
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
            }
            
            Group {
                Image("Step Three").resizable().scaledToFill()
                HStack {
                    Text("""
                        Step 3:
                        Planning & Focusing
                        """).bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        - Selecting a path or final idea to focus on

                        - Thinking deeper about materials, resources, time, etc.

                        - Planning approach
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                Image("Step Four").resizable().scaledToFill()
                HStack {
                    Text("""
                        Step 4:
                        Exploring & Experimenting
                        """).bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        - Developing the chosen plan

                        - Trying different approaches

                        - Experimenting with medium, size, colour schemes, location, etc.

                        - Making mistakes

                        - Taking risks
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
            
            Group {
                Image("Step Five").resizable().scaledToFill()
                HStack {
                    Text("""
                        Step 5:
                        Producing Preliminary Work
                        """).bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        - Finalize all plans and begin producing drafts

                        - Rough copies

                        - Maquettes

                        - Ideas come to life
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                Image("Step Six").resizable().scaledToFill()
                HStack {
                    Text("""
                        Step 6:
                        Revising & Refining
                        """).bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        - Analyze rough copy

                        - Ask for feedback

                        - Critique

                        - Question yourself

                        - Make changes or adjustments

                        - Refine idea and add final touches
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
            
            Group {
                Image("Step Seven").resizable().scaledToFill()
                HStack {
                    Text("""
                        Step 7:
                        Presenting, Performing & Sharing
                        """).bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        - Share your work

                        - Artist talks

                        - Critiques

                        - Share with peers

                        - Receive feedback
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                Image("Step Eight").resizable().scaledToFill()
                HStack {
                    Text("""
                        Step 8:
                        Reflecting & Evaluating
                        """).bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        - Reflect upon the steps that led to the creation of the artwork

                        - Journal

                        - Personal reflection

                        - Work evaluated by instructor/peers
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                Image("Feedback").resizable().scaledToFill()
                HStack {
                    Text("""
                        Feedback & Reflection
                        """).bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        - On-going throughout the entire cycle
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                
                
                
                
            }
            
            Group {
                Image("The Creative Process").resizable().scaledToFill().padding(.vertical)
                Image("Creative Process Fingernails").resizable().scaledToFill().padding(.vertical)
                Image("Hippy Tree").resizable().scaledToFill().padding(.vertical)
                Image("I Am Here").resizable().scaledToFill().padding(.vertical)
                Image("Real Creative Process").resizable().scaledToFill().padding(.vertical)
                Image("Mind Map").resizable().scaledToFill()
            }
        }
       
    }
}

struct CreativeProcess_Previews: PreviewProvider {
    static var previews: some View {
        CreativeProcess()
    }
}

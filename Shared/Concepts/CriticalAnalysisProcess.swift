//
//  CriticalAnalysisProcess.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-30.
//

import SwiftUI

struct CriticalAnalysisProcess: View {
    var body: some View {
        ScrollView {
            Group {
                HStack {
                    Text("The Critical Analysis Process").bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                    
                    Spacer()
                }
//                Image("The Critical Analysis Process").resizable().scaledToFill()
                
                Spacer()
                HStack {
                    Text("What is Art Criticism?").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                
                HStack {
                    Text("""
                        Art Criticism is a systematic discussion of an artwork involving the following stages:

                        1. Initial Reaction
                        2. Description
                        3. Analysis
                        4. Interpretation
                        5. Consideration of Cultural Context
                        6. Evaluation
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                
                HStack {
                    Text("Type of Art Criticism").bold().font(.system(.largeTitle, design: .serif)).padding(.all)
                    Spacer()
                }
                
                
            }
            
            Group {
                HStack {
                    Text("Professional Criticism").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                HStack {
                    Text("""
                        - Can be found in newspapers and magazines and on radio, television, and on the internet.

                        - The people who write it or broadcast it are paid for doing so.

                        - Good criticism also educates. It can point out things to look for in an artwork that we might overlook.

                        - Expose us to artwork we would not normally observe.

                        - Challenges our taste.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Text("Non-Professional Criticism").bold().font(.system(.title, design: .serif)).padding(.all)
                    Spacer()
                }
                HStack {
                    Text("""
                        - Good training.

                        - Engages you in making selections, discovering new things, developing your taste.

                        - Organize your knowledge so you may share your views with others.

                        - We live in a very visual and image based society. Practising criticism can help you understand things you encounter on a daily basis such as advertisements, magazines, news, products etc.
                        """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                Image("The Process").resizable().scaledToFill()
            }
        }
        
    }
}

struct CriticalAnalysisProcess_Previews: PreviewProvider {
    static var previews: some View {
        CriticalAnalysisProcess()
    }
}

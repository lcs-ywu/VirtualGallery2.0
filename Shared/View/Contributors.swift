//
//  Contributors.swift
//  Contributors
//
//  Created by James Wu on 2021-09-01.
//

import SwiftUI

struct Contributors: View {
    @State private var shouldAnimate = true
    
    var body: some View {
        ScrollView {
            HStack {
                Text("About Us").bold().foregroundColor(.black).font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                Spacer()
            }.padding()
            
            
            VStack {
                HStack {
                    

                    Image("James Wu").resizable().scaledToFit()
                    Image("Sihan Chen").resizable().scaledToFit()

                    
                }
                HStack {
                    Text("James Wu '21").font(.system(.title2, design: .serif)).multilineTextAlignment(.center).padding()
                    Spacer()
                    Text("Sihan Chen '22").font(.system(.title2, design: .serif)).multilineTextAlignment(.center).padding()
                }.padding(.horizontal)
                
                Spacer()
            }.padding()
            
            
            HStack {
                Text("""
     This a collaboration project created by James Wu and Sihan Chen, please let us how how we could do better:)

     Spacial thanks to Mr. Gordon, Ms. Morencie and every LCS artist who supported us.
     """).font(.system(.title2, design: .serif))
                    .multilineTextAlignment(.leading).padding()
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
            }.padding()
            Group {
                VStack {
                    HStack {
                        Text("Contact Us").bold().font(.system(.title, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.top, 30)
                    
                    HStack {
                        Text("""
            Please email us if you spot any error or have any suggestions.
            James: 2278147344@qq.com
            Sihan: schen@lcs.on.ca
            """).font(.system(.title2, design: .serif)).padding(.horizontal)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                            
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    .padding(.bottom, 50)
                }

                
            }
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.LCSGreen.edgesIgnoringSafeArea(.bottom))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            
            
        }
    }
}

struct Contributors_Previews: PreviewProvider {
    static var previews: some View {
        Contributors()
    }
}

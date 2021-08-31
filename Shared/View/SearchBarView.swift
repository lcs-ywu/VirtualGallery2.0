//
//  SearchBarView.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-03-15.
//

import SwiftUI


// Begin cited code
// https://github.com/lcs-rgordon/SongBrowser/blob/main/SongBrowser/Views/SearchBarView.swift
struct SearchBarView: View {
    
    var placeholderText: String = "Search for any artworks..."
    
    @Binding var text: String
    
    @State private var isEditing = false
    
    // Whether to animate changes to the search field appearance
    @State private var animateSearchField = false
    
    // Initialize a timer that will fire in one second
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @EnvironmentObject var artworks: ArtworkStore
    
    var body: some View {


//                HStack {
//                    Text("Search").bold().foregroundColor(.black).font(.system(.largeTitle, design: .serif)).padding(.horizontal)
//                    Spacer()
//                }
                HStack {
                    
                    TextField(placeholderText, text: $text)
                        .padding(7)
                        .padding(.horizontal, 25)
                        .background(Color(.systemGray6))//
                        .cornerRadius(8)
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 8)
                                
                                if isEditing && !text.isEmpty {
                                    Button(action: {
                                        text = ""
                                    }) {
                                        Image(systemName: "multiply.circle.fill")
                                            .foregroundColor(.gray)
                                            .padding(.trailing, 8)
                                    }
                                }
                            }
                        )
                        .padding(.horizontal, 10)
                        .onTapGesture {
                            isEditing = true
                        }
                        // Make the search field animate as it changes shape
                        // (Except when it first appears in the view)
                        .animation(animateSearchField ? .default : .none)
                    
                    if isEditing {
                        Button(action: {
                            
                            // Stop editing and clear the search text
                            isEditing = false
                            text = ""
                            
                            // Dismiss the keyboard
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        }) {
                            Text("Cancel")
                        }
                        .padding(.trailing, 10)
                        .padding(.bottom, -2)
                        .transition(.move(edge: .trailing))
                        .animation(.default)
                    }
                }
                .navigationTitle("Search")
                .onReceive(timer) { input in
                    
                    // Set the flag to apply animation to the search field
                    animateSearchField = true
                    
                    // Stop the timer
                    timer.upstream.connect().cancel()
                    
                }
                
       
    }
}



struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant(""))
    }
}
// End cited code


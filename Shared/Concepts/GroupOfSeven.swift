//
//  GroupOfSeven.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-30.
//

import SwiftUI

struct GroupOfSeven: View {
    var body: some View {
        ScrollView{
            Section{
                Group{
                    HStack {
                        Text("The Group of Seven").bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                        
                        Spacer()
                    }
                    Image("The Group of Seven").resizable().scaledToFill()
                    
                }
                Group{
                    HStack {
                        Text("Who?").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            1. Lawren Harris
                            2. AJ Casson
                            3. Arthur Lismer
                            4. AY Jackson
                            5. JEH MacDonald
                            6. Frederick Varley
                            7. Franklin Carmichael
                            and
                            8. Tom Thompson
                            9. Emily Carr
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Spacer()
                    Image("Who").resizable().scaledToFill()
                }
                Group{
                    HStack {
                        Text("What?").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            A FOCUS ON THE NORTHERN CANADIAN LANDSCAPE

                            STYLIZED AND ABSTRACTED
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("What").resizable().scaledToFill()
                    HStack {
                        Text("Tom Thompson - Birch Grove - Group of Seven").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
                Group{
                    HStack {
                        Text("When?").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            1911 - FIRST MEETING OF ORIGINAL GO7 MEMBERS

                            1920 - FIRST EXHIBITION AT THE AGO AS A COLLECTIVE

                            1933 - DISBANDED TO FORM THE CANADIAN GROUP OF PAINTERS
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("When").resizable().scaledToFill()
                }
                Group{
                    HStack {
                        Text("Where?").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            MOST OF THE GO7s WORK WAS PAINTED OF ALGONQUIN PARK. THEY ALSO REFERENCED NORTHEASTERN ONTARIO AND NORTHERN QUEBEC.
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Where").resizable().scaledToFill()
                }
                Group{
                    HStack {
                        Text("Why?").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            A REVOLT AGAINST 19C REALISM
                            AN ATTEMPT TO UNIFY NATURE AND ART
                            AN ATTEMPT TO SHOW PEOPLE THE CANADIAN WILDERNESS
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Why").resizable().scaledToFill()
                    HStack {
                        Text("Northern Lake by Lawren Harris, 1923").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
            }
            Section{
                Group{
                    HStack {
                        Text("How?").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            HIKE, CANOE OR CAMP
                            MAKE SKETCHES IN NATURE
                            BRING SKETCHES BACK TO STUDIO TO COMPLETE
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("How").resizable().scaledToFill()
                    HStack {
                        Text("Franklin Carmichael is seen sketching at Grace Lake in 1935.").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Peterborough").resizable().scaledToFill()
                }
                Group{
                    HStack {
                        Text("ARTISTS IN FOCUS").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            "Use the handout provided to record facts about each artist and characteristics of their painting style. Notice colour scheme, brush strokes, subject matter."
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    
                }
                Group{
                    HStack {
                        Text("TOM THOMPSON").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("1877 - 1917").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            Born near Claremont, ON
                            Avid outdoorsman, worked as a guide and forest ranger in Algonquin park
                            Limited formal training
                            Finest work created between 1914-1917
                            Drowned in 1917 in a mysterious canoeing accident in Algonquin Park at the age of 40
                            There is a memorial for him on Canoe Lake in Algonquin Park
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Tom Thompson").resizable().scaledToFill()
                    Image("Little Falls").resizable().scaledToFill()
                    HStack {
                        Text("Little Falls, c.1917").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("The Jack Pine").resizable().scaledToFill()
                    HStack {
                        Text("The Jack Pine, c.1916-1917").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("The West Wind").resizable().scaledToFill()
                    HStack {
                        Text("The West Wind, c.1917").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
                Group{
                    HStack {
                        Text("EMILY CARR").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("1871 - 1945").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            Born in Victoria, BC
                            Moved to San Francisco in 1890 to study painting and then to Europe in 1899
                            Was in France in 1910 and was artistically influenced by Fauvist artists
                            Moved back to BC and considered giving up art
                            Connected with the Go7 in the 1930s and was reinspired
                            Subject matter focuses a lot on Native American culture in Canada
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Emily Carr").resizable().scaledToFill()
                    Image("Big Raven").resizable().scaledToFill()
                    HStack {
                        Text("Big Raven, c.1931").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Cedar Sanctuary").resizable().scaledToFill()
                    HStack {
                        Text("Cedar Sanctuary, c.1945").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Scorned as Timber, Beloved of the Sky").resizable().scaledToFill()
                    HStack {
                        Text("Scorned as Timber, Beloved of the Sky, c.1935").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
                Group{
                    Section{
                        HStack {
                            Text("LAWREN HARRIS").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                            Spacer()
                        }
                        HStack {
                            Text("1885 - 1970").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                            Spacer()
                        }
                        HStack {
                            Text("""
                                Born into a wealthy family (Massey-Harris farm equipment)
                                Main force that brought Go7 together, influenced and encouraged many young painters
                                His style changes a great deal over his career - loved experimenting
                                Studied Theosophy. Very interested in spiritual and religious philosophies
                                """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                            Spacer()
                        }
                        Image("Lawren Harris").resizable().scaledToFill()
                        Image("The Corner Store").resizable().scaledToFill()
                        HStack {
                            Text("The Corner Store, c.1912").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                            Spacer()
                        }
                        Image("Algoma Hill").resizable().scaledToFill()
                        HStack {
                            Text("Algoma Hill, c.1920").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                            Spacer()
                        }
                    }
                    
                    Image("North Shore, Lake Superior").resizable().scaledToFill()
                    HStack {
                        Text("North Shore, Lake Superior, c.1926").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Mount Thule, Bylot Island").resizable().scaledToFill()
                    HStack {
                        Text("Mount Thule, Bylot Island, c.1930").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
            }
            Section{
                Group{
                    Section{
                        HStack {
                            Text("FRANKLIN CARMICHAEL").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                            Spacer()
                        }
                        HStack {
                            Text("1890 - 1945").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                            Spacer()
                        }
                        HStack {
                            Text("""
                                Born in Orillia, ON
                                Youngest member of the original Go7
                                Studied in Belgium
                                Inspired by the texture of Autumn foliage
                                Focused on buildings and rural settlements
                                Watercolourist
                                Founded the Canadian Society of Painters in Watercolour
                                """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                            Spacer()
                        }
                        Image("FRANKLIN CARMICHAEL").resizable().scaledToFill()
                        Image("Autumn Hillside").resizable().scaledToFill()
                        HStack {
                            Text("Autumn Hillside, c.1920").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                            Spacer()
                        }
                        Image("A Northern Silver Mine").resizable().scaledToFill()
                        HStack {
                            Text("A Northern Silver Mine, c.1930").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                            Spacer()
                        }
                    }
                    
                    Image("Scrub Oaks and Maples").resizable().scaledToFill()
                    HStack {
                        Text("Scrub Oaks and Maples, c.1935").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
                Group{
                    HStack {
                        Text("A.Y. JACKSON").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("1882 - 1974").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                                Born in Montreal, QC
                                Grew up in a poor family, worked in a lithography studio at age 12
                                Studied and painted in Europe
                                Settled in Toronto in 1913
                                Travelled widely throughout Canada on painting expeditions
                                Aimed to portray the presence of man in the Canadian landscape
                                """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("A.Y. JACKSON").resizable().scaledToFill()
                    Image("Frozen Lake, Early Spring, Algonquin Park").resizable().scaledToFill()
                    HStack {
                        Text("Frozen Lake, Early Spring, Algonquin Park, c.1914").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Grey Day Laurentians").resizable().scaledToFill()
                    HStack {
                        Text("Grey Day Laurentians, c.1928").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Algoma in November").resizable().scaledToFill()
                    HStack {
                        Text("Algoma in November, c.1935").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
                Group{
                    HStack {
                        Text("J.E.H. MACDONALD").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("1873 - 1932").bold().font(.system(.largeTitle, design: .serif)).padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("""
                                Born in Durham, England. Emigrated to Canada with his parents in 1887.
                                Met Tom Thompson who encouraged him to paint landscapes
                                Lawren Harris persuaded him to paint full time
                                Had great command of pigment and colour
                                Sketches are intense, vigorous, and expressive
                                """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("J.E.H. MACDONALD").resizable().scaledToFill()
                    Image("Thomson’s Rapids Magnetawan River").resizable().scaledToFill()
                    HStack {
                        Text("Thomson’s Rapids Magnetawan River, c.1912").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("The Little Falls Sketch").resizable().scaledToFill()
                    HStack {
                        Text("The Little Falls Sketch, c.1918").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                    Image("Falls, Montreal River").resizable().scaledToFill()
                    HStack {
                        Text("Falls, Montreal River, c.1920").font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct GroupOfSeven_Previews: PreviewProvider {
    static var previews: some View {
        GroupOfSeven()
    }
}

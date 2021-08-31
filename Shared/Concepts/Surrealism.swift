//
//  Surrealism.swift
//  VirtualGallery
//
//  Created by James Wu on 2021-05-30.
//

import SwiftUI

struct Surrealism: View {
    var body: some View {
        ScrollView {
            Section {
                Group {
                    HStack {
                        Text("Surrealism").bold().foregroundColor(.black).font(.system(.largeTitle, design:.serif)).padding(.leading)
                        
                        Spacer()
                    }
                    Image("Surrealism").resizable().scaledToFill()
                    
                    Spacer()
                    HStack {
                        Text("What is Surrealism?").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            Surrealism, whose name dates back to the poet Guillaume Apollinaire (1917), emerged in the first half of the twentieth century under the influence of the new findings of psychoanalysis.

                            The insights on the concept of the unconscious inspired the artists of surrealism to visualize this unconscious as actual reality in their images.

                            Dream and reality should merge in surrealism - in fact, the word "surréalisme" (French "sur" = over) literally means something that goes beyond realism or is beyond reality.
                            
                            Surrealism became a closed movement from 1921 in Paris under the guidance of the French writer and critic André Breton (1896-1966).

                            In 1924 his programmatic "Manifeste du Surréalisme" or “Surrealist Manifesto” was published. Surrealism, at first less a style than a spiritual-political attitude, demanded as "psychic automatism" the abolition of the boundaries between dream and reality, delusion and reason, subjective and objective.

                            Dadaism preceded Surrealism by a few years and lent ideas about collage, photomontage and the absurd to Surrealism
                            The idea of Surrealism was built upon to give way to Magic Realism, Symbolism, Pittura Metafisica.
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                }
            
                Group {
                        
                    
                    HStack {
                        Text("Automatism").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("In art, automatism refers to creating art without conscious thought, accessing material from the unconscious mind as part of the creative process.").font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("Battle of Fishes").resizable().scaledToFill()
                    HStack {
                        Text("Battle of Fishes, André Masson, c. 1926, Sand, gesso, oil, pencil, and charcoal on canvas, 36.2 x 73 cm.").font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                        
                    }
                    
                    Image("André Masson").resizable().scaledToFill()
                    
                    HStack {
                        Text("French, 1896–1987").font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                        
                    }
                    
                    HStack {
                        Text("""
                            - Spent most of his time as a Surrealist (from 1924-29) exploring the idea of automatic painting and drawing.

                            - Masson would begin his paintings by throwing sand and paint on the canvas and using the resulting shapes to guide his paintings.
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    
                }
                
                Group {
                    Image("Persistence of Memory").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Persistence of Memory - Salvador Dali c.1931, 10” x 14”, oil
                            """).font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                    
                    Image("Salvador Dalí").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Spanish, 1904-1989
                            """).font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            - Key figure in the surrealist movement.

                            - Aimed to “discredit reality”.

                            - Often created a juxtaposition between the ordinary and the bizarre in his works.
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                }
                
                Group {
                    HStack {
                        Text("Juxtaposition").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    Image("Juxtaposition").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Meret Oppenheim, Object, Le Déjeuner en fourrure (Fur Lunch), c.1936
                            """).font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                    
                    Image("Meret Oppenheim").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Swiss, 1913-1985
                            """).font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            - First female Surrealist

                            - Kept a journal of her dreams which she would reference for inspiration

                            - Her work with found objects was a key bridge between the Surrealist and Dadaist movements
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    HStack {
                        Text("What is Surrealism?").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            Themes of the surrealist works were the pictorial worlds of dream, intoxication and hypnosis, which led to fantastic pictorial inventions.

                            Stylistically, in Veristic Surrealism, the objects are rendered in an overly clear manner of painting and often grotesquely distorted, the colors usually appear cool and clear, objects are isolated from their original contexts and placed in novel relationships (recontextualization), so that dream and reality seem to be blurred.
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Spacer()
                    
                }
                
                Group {
                    HStack {
                        Text("Recontexualization").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Text("To place (something, such as a literary or artistic work) in a different context.").font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("The Battle of the Argonne").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, The Battle of the Argonne, 1959, oil on canvas, 50×61 cm.
                            """).font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                    
                    Image("René Magritte").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Belgian, 1898–1967
                            """).font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            - Began his career as a graphic artist and abstract painter

                            - Switched to his iconic flat and figurative style when he began working as a Surrealist painter

                            - Moved to Paris in 1927 to be closer to the French Surrealists
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            “Collage is the noble conquest of the irrational, the coupling of two realities, irreconcilable in appearance, upon a plane which apparently does not suit them.” --- Max Ernst
                            """).font(.system(.title, design: .serif)).bold().italic().padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                }
            }
            
            Section {
                Group {
                    HStack {
                        Text("What is Surrealism?").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                        }
                    HStack {
                        Text("""
                            Surrealism made a significant contribution to the field of the extension of the concept of art: collage, frottage and other new techniques and pictorial forms were introduced, new materials were used, film and photography played an important role. The technique of "automatism" ("écriture automatique" and "dessin automatique" = automatic writing and automatic drawing) became the cues of gestural post-war abstraction.
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("The Lover").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, The Lover, 1928, oil on canvas, 54 x 73.4 cm.
                            """).font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                    
                    Image("The Collective Invention").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, The Collective Invention, 1934, oil on canvas, 73.5 x 97.5 cm.
                            """).font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                }
                
                Group {
                    HStack {
                        Text("Artists Who Were Integral To The Surrealist Movement").bold().font(.system(.title, design: .serif)).padding(.all)
                        Spacer()
                        }
                    HStack {
                        Text("""
                            Hans Arp, Leonora Carrington, Salvador Dalí, Paul Delvaux, Oscar Dominguez, Marcel Duchamp, Edgar Ende, Max Ernst, Alberto Giacometti, Frida Kahlo, René Magritte, André Masson, Robert Matta, Joan Miró, Richard Oelze, Meret Oppenheim, Wolfgang Paalen , Pierre Roy, Kay Sage, Yves Tanguy and Mac Carpenter.
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("René Magritte").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Belgian, 1898–1967
                            """).font(.system(.body, design: .serif)).padding(.leading)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            "In terms of my painting, the word 'dream' is often misunderstood. My works are not part of the dream world, on the contrary. If they are dreams in this context, they are very different from those we have in our sleep. They are more like self-made dreams in which nothing is as vague as the feelings one has when one takes refuge in sleep. Dreams that do not want to euthanize but wake you up. "
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            - Began his career as a graphic artist and abstract painter

                            - Switched to his iconic flat and figurative style when he began working as a Surrealist painter

                            - Moved to Paris in 1927 to be closer to the French Surrealists

                            - Explored the relationship between text and image

                            - Reimagined painting as a critical tool that could challenge perception and engage the viewer’s mind
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    
                }
                
                Group {
                    Image("Ceci n'est pas une pipe").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, Ceci n'est pas une pipe, 1928-29, oil on canvas, 63.5 x 93.98 cm
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            "A picture is not to be confused with a thing that you can touch, can you stuff my pipe? Of course not! It is just an illustration." Had I written on my picture, this is a pipe, I would have lied. "
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                        
                    }
                    Spacer()
                    Image("The Palace of Curtains, III").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, The Palace of Curtains, III, 1928-29, oil on canvas, 81.2 x 116.4 cm.
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("The False Mirror").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, The False Mirror, 1928, oil on canvas, 54 x 80 cm.
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    
                    
                }
                
                Group {
                    Image("La condition humaine 1").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, La condition humaine, 1933, oil on canvas, 100 x 81 cm.
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("La condition humaine 2").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, La condition humaine, 1935, oil on canvas, 100 x 81 cm.
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("The Return").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, The Return, 1940, oil on canvas,? x? cm
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("The Son of the Man").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, The Son of the man, 1964, Oil on canvas, 116 x 89 cm.
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            "Everything we see hides another thing, we always want to see what is hidden by what we see."
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                }
                
                Group {
                    Image("The Blank Signature").resizable().scaledToFill()
                    HStack {
                        Text("""
                            René Magritte, The Blank Signature, 1965, Oil on canvas, 81.3 cm x 65.1 cm.
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            "Visible things can be invisible - when someone rides a horse through the forest, you see them first, then you do not, but you know they're there, in the 'blank revolt' the rider hides the trees and the trees hide the rider. But our thinking involves both the visible and the invisible, and I use painting to make thought visible. "
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("Not Crazy").resizable().scaledToFill()
                    Image("Salvador Dali 1").resizable().scaledToFill()
                    HStack {
                        Text("""
                            - Key figure in the surrealist movement

                            - Aimed to “discredit reality”

                            - Often created a juxtaposition between the ordinary and the bizarre in his works
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("Persistence of Memory").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Dali, The Persistence of Memory, Oil On Canvas, 1931
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    Image("The Disintegration of the Persistence of Memory").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Dali, The Disintegration of the Persistence of Memory, Oil On Canvas, 1952-54
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                }
            }
            
            Section {
                Group {
                    Image("The Angelus").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Jean-François Millet,
                            The Angelus, 1857-1859, sketch and oil painting,
                            55.5 x 66 cm
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            For the artist Salvador Dalí, it became a kind of artistic obsession, recreating the scene many times in the 1930s, and in his book The Tragic Myth of The Angelus of Millet, (1938) argued that the couple had actually been praying over their buried child and that the work contained a message of repressed sexual aggression. Dalí's certainty may have been cemented by the words of the Angelus itself, which essentially condenses the Incarnation of Christ into three short prayers, one for each time of day, followed by the Hail Mary. The prayer for the evening is: 'And the Word was made flesh: and dwelt among us.' In 1963, in response to Dalí's repeated assertions, the Louvre x-rayed the painting revealing an underlying geometric shape similar to that of a coffin in the place where the farmer was now digging potatoes. Regardless of Millet's intention or Dalí's beliefs, there is an awareness of humanity's fall from grace where, having sinned, Adam and Eve were condemned to 'earning one's bread by the sweat of one's brow,' and where redemption existed only in the distant realm of heaven.
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("The Angelus of Millet").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Dali, The Angelus of Millet, oil on canvas, c. 1935
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("The Architectonic Angelus of Millet").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Dali,The Architectonic Angelus of Millet, 1933, oil painting, 73 x 61 cm
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("The Anthropomorphic Cabinet").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Dali, The Anthropomorphic Cabinet, Oil On Panel, 1936
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            Dali was deeply influenced by the work of Sigmund Freud, contending "The only difference between immortal Greece and contemporary times is Sigmund Freud, who discovered that the human body, purely platonic in the Greek epoch, is nowadays full of secret drawers that only psychoanalysis is capable to open."
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                }
                
                Group {
                    Image("Dream Caused by the Flight of a Bee").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Dream Caused by the Flight of a Bee Around a Pomegranate a Second Before Awakening, Dali, c. 1944, oil on canvas.
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    Image("Elephant and Obelisk").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Elephant and Obelisk, Bernini, c.1667, marble sculpture.
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("The Birth of Venus").resizable().scaledToFill()
                    HStack {
                        Text("""
                            The Birth of Venus, Alexandre Cabanel,  c. 1863, oil on canvas.
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("Swans Reflecting Elephants").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Dali, Swans Reflecting Elephants, Oil On Panel, 1937
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    HStack {
                        Text("""
                            The paranoiac-critical method is a surrealist technique developed by Salvador Dalí in the early 1930s. He employed it in the production of paintings and other artworks, especially those that involved optical illusions and other multiple images. Employing the method when creating a work of art uses an active process of the mind to visualize images in the work and incorporate these into the final product. An example of the resulting work is a double image or multiple image in which an ambiguous image can be interpreted in different ways.
                            """).font(.system(.title, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    
                }
                
                Group {
                    Image("The Face of War").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Dali, The Face of War, Oil On Canvas, 1940
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    
                    Image("Geopoliticus Child Watching the Birth of the New Man").resizable().scaledToFill()
                    HStack {
                        Text("""
                            Dali, Geopoliticus Child Watching the Birth of the New Man, Oil On Panel, 1943
                            """).font(.system(.body, design: .serif)).padding(.all).fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                }
            }
            
        }
       
    }
}

struct Surrealism_Previews: PreviewProvider {
    static var previews: some View {
        Surrealism()
    }
}

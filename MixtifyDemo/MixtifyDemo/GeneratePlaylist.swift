import SwiftUI

struct GeneratePlaylist: View {

    var array: [String]
    
    var genres: [String] = ["pop", "rock", "hiphop", "lofi", "oldies", "indie", "edm", "kpop"] // Add other genres as needed
    
    var songs: [String: [String]] = [
        "pop": [
            "Blinding Lights by The Weeknd",
            "Watermelon Sugar by Harry Styles",
            "Dynamite by BTS",
            "Levitating by Dua Lipa",
            "Say So by Doja Cat",
            "Don't Start Now by Dua Lipa",
            "Rain On Me by Lady Gaga and Ariana Grande",
            "Intentions by Justin Bieber ft. Quavo",
            "Adore You by Harry Styles"
        ],
        "rock": [
            "Take Me to Church by Hozier",
            "Believer by Imagine Dragons",
            "Heathens by Twenty One Pilots",
            "Uptown Funk by Mark Ronson ft. Bruno Mars"
        ],
        "hiphop": [
            "Sicko Mode by Travis Scott",
            "Old Town Road by Lil Nas X ft. Billy Ray Cyrus",
            "Blinding Lights by The Weeknd (blending R&B and hip-hop elements)",
            "WAP by Cardi B ft. Megan Thee Stallion",
            "The Box by Roddy Ricch",
            "Rockstar by DaBaby ft. Roddy Ricch"
        ],
        "lofi": [
            "Jocelyn Flores by XXXTentacion (lofi remix)",
            "Death Bed (Coffee for Your Head) by Powfu ft. beabadoobee (lofi remix)",
            "lofi hip hop radio - beats to relax/study to by ChilledCow (YouTube live stream)",
            "The Girl I Haven't Met by Kudasaibeats",
            "Dreams by SwuM"
        ],
        "oldies": [
            "Johnny B. Goode by Chuck Berry",
            "I Want to Hold Your Hand by The Beatles",
            "What'd I Say by Ray Charles",
            "Twist and Shout by The Isley Brothers (covered by The Beatles)",
            "Stand by Me by Ben E. King"
        ],
        "indie": [
            "Take Me Out by Franz Ferdinand",
            "Electric Feel by MGMT",
            "Ho Hey by The Lumineers",
            "Dog Days Are Over by Florence + The Machine",
            "Pumped Up Kicks by Foster the People"
        ],
        "edm": [
            "Strobe by Deadmau5",
            "Wake Me Up by Avicii",
            "Clarity by Zedd ft. Foxes",
            "Titanium by David Guetta ft. Sia",
            "Satisfaction by Benny Benassi"
        ],
        "kpop": [
            "Lovesick Girls by BLACKPINK",
            "Boy With Luv by BTS ft. Halsey",
            "Kill This Love by BLACKPINK",
            "Permission to Dance by BTS",
            "On The Ground by ROSÉ"
        ],
    ]
    @State private var showGenresAndSongs = false
        
        var body: some View {
            ScrollView {
                VStack {
                   
                    
                    Text("We made a playlist for you!")
                        .padding()
                    
                    Image("playlist") // provide asset for this
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        .cornerRadius(10)
                        .padding(.bottom, 10.0)
                    
                    Button("Click here") {
                        showGenresAndSongs.toggle()
                    }
                    .padding()
                    
                    Spacer()
                    
                    if showGenresAndSongs {
                        VStack(alignment: .leading) {
                            Text("Selected Genres:")
                                .font(.headline)
                                .underline(true)
                                .padding(.bottom, 5)
                            
                            ForEach(array, id: \.self) { genre in
                                Text(genre)
                                    .padding(.bottom, 2)
                                    .bold()
                                
                                if let genreSongs = songs[genre] {
                                    ForEach(genreSongs, id: \.self) { song in
                                        Text(song)
                                            .padding(.leading, 20) // Indent songs under genres
                                            .padding(.bottom, 2)
                                    }
                                }
                            }
                        }
                        
                    }
                }
                .onChange(of: showGenresAndSongs) { _ in
                    // If needed, you can perform additional actions when the state changes
                }
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GeneratePlaylist(array: ["pop", "hiphop"])
        }
    }

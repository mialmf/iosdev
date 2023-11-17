import SwiftUI

struct GridView: View {
    let columnLayout = Array(repeating: GridItem(), count: 2)

    @State private var selectedGenre = Color.gray
    @State private var selectedGenreArray: [String] = []
    public var entriesTot: Int = 0

    let allColors: [Color] = [
        .pink,
        .red
    ]

    let allColors2: [Color] = [
        .yellow,
        .purple
    ]

    let allColors3: [Color] = [
        .green,
        .blue
    ]

    let allColors4: [Color] = [
        .orange,
        .indigo
    ]

    var body: some View {
        NavigationView {

            var entriesMax = 3
            var entriesTotal = 0

            VStack {
                Text("Pick 3 colors!")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(selectedGenre)
                    .padding(5)

                ScrollView {
                    LazyVGrid(columns: columnLayout) {
                        ForEach(allColors, id: \.description) { color in
                            Button {
                                selectedGenre = color
                                if (selectedGenre == Color.pink) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("pop")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
                                        print("""
                                            "Blinding Lights" by The Weeknd
                                            "Watermelon Sugar" by Harry Styles
                                            "Dynamite" by BTS
                                            "Levitating" by Dua Lipa
                                            "Say So" by Doja Cat
                                            "Don't Start Now" by Dua Lipa
                                            "Rain On Me" by Lady Gaga and Ariana Grande
                                            "Intentions" by Justin Bieber ft. Quavo
                                            "Adore You" by Harry Styles
                                            """)

                                    } else {
                                        print("Max entries reached")
                                    }
                                }

                                if (selectedGenre == Color.red) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("rock")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
                                        print("""
                                            "Take Me to Church" by Hozier
                                            "Believer" by Imagine Dragons
                                            "Heathens" by Twenty One Pilots
                                            "Uptown Funk" by Mark Ronson ft. Bruno Mars (blending funk and pop-rock elements)
                                            """)

                                    } else {
                                        print("Max entries reached")
                                    }
                                }
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                            }
                            .buttonStyle(.plain)
                        }
                    } // end of button row 1

                    LazyVGrid(columns: columnLayout) {
                        ForEach(allColors2, id: \.description) { color in
                            Button {
                                selectedGenre = color
                                if (selectedGenre == Color.yellow) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("hiphop")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
                                        print("""
                                            "Sicko Mode" by Travis Scott
                                            "Old Town Road" by Lil Nas X ft. Billy Ray Cyrus
                                            "Blinding Lights" by The Weeknd (blending R&B and hip-hop elements)
                                            "WAP" by Cardi B ft. Megan Thee Stallion
                                            "The Box" by Roddy Ricch
                                            "Rockstar" by DaBaby ft. Roddy Ricch
                                            """)

                                    } else {
                                        print("Max entries reached")
                                    }
                                }

                                if (selectedGenre == Color.purple) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("lofi")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
                                        print("""
                                            "Jocelyn Flores" by XXXTentacion (lofi remix)
                                            "Death Bed (Coffee for Your Head)" by Powfu ft. beabadoobee (lofi remix)
                                            "lofi hip hop radio - beats to relax/study to" by ChilledCow (YouTube live stream)
                                            "The Girl I Haven't Met" by Kudasaibeats
                                            "Dreams" by SwuM
                                            """)

                                    } else {
                                        print("Max entries reached")
                                    }
                                }
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                            }
                            .buttonStyle(.plain)
                        }
                    }   // end of button row 2

                    LazyVGrid(columns: columnLayout) {
                        ForEach(allColors3, id: \.description) { color in
                            Button {
                                selectedGenre = color
                                if (selectedGenre == Color.green) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("oldies")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
                                        print("""
                                            "Johnny B. Goode" by Chuck Berry
                                            "I Want to Hold Your Hand" by The Beatles
                                            "What'd I Say" by Ray Charles
                                            "Twist and Shout" by The Isley Brothers (covered by The Beatles)
                                            "Stand by Me" by Ben E. King
                                            """)

                                    } else {
                                        print("Max entries reached")
                                    }
                                }
                                if (selectedGenre == Color.blue) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("indie")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
                                        print("""
                                            "Take Me Out" by Franz Ferdinand
                                            "Electric Feel" by MGMT
                                            "Ho Hey" by The Lumineers
                                            "Dog Days Are Over" by Florence + The Machine
                                            "Pumped Up Kicks" by Foster the People
                                            """)

                                    } else {
                                        print("Max entries reached")
                                    }
                                }
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                            }
                            .buttonStyle(.plain)
                        }
                    } // end of button row 3

                    LazyVGrid(columns: columnLayout) {
                        ForEach(allColors4, id: \.description) { color in
                            Button {
                                selectedGenre = color
                                if (selectedGenre == Color.orange) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("edm")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
                                        print("""
                                            "Strobe" by Deadmau5
                                            "Wake Me Up" by Avicii
                                            "Clarity" by Zedd ft. Foxes
                                            "Titanium" by David Guetta ft. Sia
                                            "Satisfaction" by Benny Benassi
                                            """)

                                    } else {
                                        print("Max entries reached")
                                    }
                                }

                                if (selectedGenre == Color.purple) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("kpop")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
                                        print("""
                                            "Lovesick Girls" by BLACKPINK
                                            "Boy With Luv" by BTS ft. Halsey
                                            "Kill This Love" by BLACKPINK
                                            "Permission to Dance" by BTS
                                            "On The Ground" by ROSÉ
                                            """)

                                    } else {
                                        print("Max entries reached")
                                    }
                                }
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                            }
                            .buttonStyle(.plain)
                        }
                    } // end of button row 4
                } // end of scroll view
                .padding(10)

                NavigationLink("Generate Playlist!", destination: GeneratePlaylist(array: selectedGenreArray))
                    .onAppear {
                        print("Selected Genres in GridView: \(selectedGenreArray)")
                    } // end of vstack

            } // end of navi
            .padding(10)
        }
    }
}

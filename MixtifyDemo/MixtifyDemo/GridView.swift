import SwiftUI

struct GridView: View {
    let columnLayout = Array(repeating: GridItem(), count: 2)
    @State private var isShowingLoadingScreen = false
    @State private var isShowingGeneratePlaylist = false

    
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
                                    } else {
                                        print("Max entries reached")
                                    }
                                }
                                
                                if (selectedGenre == Color.red) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("rock")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
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
                                    } else {
                                        print("Max entries reached")
                                    }
                                }
                                
                                if (selectedGenre == Color.purple) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("lofi")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
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
                                    } else {
                                        print("Max entries reached")
                                    }
                                }
                                if (selectedGenre == Color.blue) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("indie")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
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
                                    } else {
                                        print("Max entries reached")
                                    }
                                }
                                
                                if (selectedGenre == Color.purple) {
                                    if (entriesTotal < entriesMax) {
                                        selectedGenreArray.append("kpop")
                                        entriesTotal += 1
                                        print("Selected Genres: \(selectedGenreArray)")
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
                
                // destination: GeneratePlaylist(array: selectedGenreArray)
                Button("Generate Playlist!") {
                                   isShowingLoadingScreen = true
                                   // Simulate loading for 5 seconds
                                   DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                       isShowingLoadingScreen = false
                                       isShowingGeneratePlaylist = true
                                      
                                      
                                   }
                               }
                               .padding(10)

                               NavigationLink(
                                   destination: GeneratePlaylist(array: selectedGenreArray),
                                   isActive: $isShowingGeneratePlaylist
                               ) {
                                   EmptyView()
                               }
                               .hidden()
                           }
                           .background(
                               Color.white
                           )
                           .padding(10)
                           .sheet(isPresented: $isShowingLoadingScreen) {
                               LoadingScreenView()
                           }
        }
    }
    
    
    
}

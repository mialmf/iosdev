//
//  GridView.swift
//  Mixtify
//
//  Created by Mia Felipe on 11/8/23.
//

import SwiftUI

struct GridView: View {
    let columnLayout = Array(repeating: GridItem(), count: 2)
    
    @State private var selectedGenre = Color.gray
    public var selectedGenreArray: [String] = []
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
        NavigationView{
            
            var selectedGenreArray: [String] = []
            var entriesMax = 3
            var entriesTotal = 0
            
            
            VStack {
                Text("Pick 3 colors!")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(selectedGenre)
                    .padding(5)
                
                ScrollView {
                    LazyVGrid(columns: columnLayout){
                        ForEach(allColors, id: \.description) {
                            color in Button {
                                selectedGenre = color
                                if (selectedGenre == Color.pink){
                                    if (entriesTotal < entriesMax){
                                        selectedGenreArray.append("pop")
                                        entriesTotal+=1
                                    }
                                }
                                
                                if (selectedGenre == Color.red){
                                    if (entriesTotal < entriesMax){
                                        selectedGenreArray.append("rock")
                                        entriesTotal+=1
                                    }
                                }
                                
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                                
                            }
                            .buttonStyle(.plain)
                        }
                    } //end of button row 1
                    
                    LazyVGrid(columns: columnLayout){
                        ForEach(allColors2, id: \.description) {
                            color in Button {
                                selectedGenre = color
                                if (selectedGenre == Color.yellow){
                                    if (entriesTotal < entriesMax){
                                        selectedGenreArray.append("hiphop")
                                        entriesTotal+=1
                                    }
                                }
                                
                                if (selectedGenre == Color.purple){
                                    if (entriesTotal < entriesMax){
                                        selectedGenreArray.append("lofi")
                                        entriesTotal+=1
                                    }
                                }
                                
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                                
                            }
                            .buttonStyle(.plain)
                        }
                    }   //end of button row 2
                    
                    LazyVGrid(columns: columnLayout){
                        ForEach(allColors3, id: \.description) {
                            color in Button {
                                selectedGenre = color
                                if (selectedGenre == Color.green){
                                    if (entriesTotal < entriesMax){
                                        selectedGenreArray.append("oldies")
                                        entriesTotal+=1
                                    }
                                }
                                if (selectedGenre == Color.blue) {
                                    if (entriesTotal < entriesMax){
                                        selectedGenreArray.append("indie")
                                        entriesTotal+=1
                                    }
                                }
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                            }
                            .buttonStyle(.plain)
                        }
                    } //end of button row 3
                    
                    
                    LazyVGrid(columns: columnLayout){
                        ForEach(allColors4, id: \.description) {
                            color in Button {
                                selectedGenre = color
                                if (selectedGenre == Color.orange){
                                    if (entriesTotal < entriesMax){
                                        selectedGenreArray.append("edm")
                                        entriesTotal+=1
                                    }
                                }
                                
                                if (selectedGenre == Color.purple){
                                    if (entriesTotal < entriesMax){
                                        selectedGenreArray.append("kpop")
                                        entriesTotal+=1
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
                
            } // end of vstack

        } // end of navi
        .padding(10)
    }
    
    
}
    



struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

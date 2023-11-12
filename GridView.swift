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
    public var entriesMax: Int = 3
    public var entriesTot: Int = 0
    
    let allColors: [Color] = [
        .pink,
        .red
    ]
    
    let allColors2: [Color] = [
        .mint,
        .blue
    ]
    
    let allColors3: [Color] = [
        .green,
        .purple
    ]
    
    let allColors4: [Color] = [
        .orange,
        .indigo]
    
    var body: some View {
        NavigationView{
            
            VStack {
                Text("Pick 3 genres")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(selectedGenre)
                    .padding(10)
                
                ScrollView {
                    LazyVGrid(columns: columnLayout){
                        ForEach(allColors, id: \.description) {
                            color in Button {
                                selectedGenre = color
                                if (selectedGenre == Color.pink){
                                    genreArray(selectedGenre: "pop")
                                } else {
                                    genreArray(selectedGenre: "rock")
                                }
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                                
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    
                    LazyVGrid(columns: columnLayout){
                        ForEach(allColors2, id: \.description) {
                            color in Button {
                                selectedGenre = color
                                if (selectedGenre == Color.mint){
                                    genreArray(selectedGenre: "hiphop")
                                } else{
                                    genreArray(selectedGenre: "lofi")
                                }
                                
                                
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    
                    LazyVGrid(columns: columnLayout){
                        ForEach(allColors3, id: \.description) {
                            color in Button {
                                selectedGenre = color
                                if (selectedGenre == Color.green){
                                    genreArray(selectedGenre: "oldies")
                                } else {
                                    genreArray(selectedGenre: "indie")
                                }
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    
                    
                    LazyVGrid(columns: columnLayout){
                        ForEach(allColors3, id: \.description) {
                            color in Button {
                                selectedGenre = color
                                if (selectedGenre == Color.orange){
                                    genreArray(selectedGenre: "edm")
                                } else {
                                    genreArray(selectedGenre: "kpop")
                                }
                            } label: {
                                RoundedRectangle(cornerRadius: 4.0)
                                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                                    .foregroundColor(color)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    
                }
                .padding(10)
                NavigationLink("Generate Playlist!", destination: GeneratePlaylist(selectedGenreArray: selectedGenreArray))
                    

            }
            
            .padding(10)
            
            
            
        }
    }
    
    
    
    func genreArray(selectedGenre: String){
        var selectedGenreArray: [String] = []
        let entriesMax: Int = 3
        var entriesTot: Int = 0
        
        if (selectedGenre == "pop") {
            if (entriesTot < entriesMax){
                selectedGenreArray.append("pop")
                entriesTot+=1
            }
        }
        
        if (selectedGenre == "rock") {
            if (entriesTot < entriesMax){
                selectedGenreArray.append("rock")
                entriesTot+=1
            }
        }
        
        if (selectedGenre == "hiphop") {
            if (entriesTot < entriesMax){
                selectedGenreArray.append("hiphop")
                entriesTot+=1
            }
        }
        
        if (selectedGenre == "lofi") {
            if (entriesTot < entriesMax){
                selectedGenreArray.append("lofi")
                entriesTot+=1
            }
        }
        
        if (selectedGenre == "oldies") {
            if (entriesTot < entriesMax){
                selectedGenreArray.append("oldies")
                entriesTot+=1
            }
        }
        
        if (selectedGenre == "indie") {
            if (entriesTot < entriesMax){
                selectedGenreArray.append("indie")
                entriesTot+=1
            }
        }
        
        if (selectedGenre == "edm") {
            if (entriesTot < entriesMax){
                selectedGenreArray.append("edm")
                entriesTot+=1
            }
            
        }
        
        if (selectedGenre == "kpop") {
            if (entriesTot < entriesMax){
                selectedGenreArray.append("kpop")
                entriesTot+=1
            }
        }
        
    } //end of function
    
    
    struct GridView_Previews: PreviewProvider {
        static var previews: some View {
            GridView()
        }
    }
}


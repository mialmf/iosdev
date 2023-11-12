//
//  ContentView.swift
//  ios music app
//
//
//

import SwiftUI

struct GeneratePlaylist: View {
        var selectedGenreArray: [String]

    var body: some View {
        Text("Selected Genres: \(selectedGenreArray.joined(separator: ", "))")
        VStack {
            Button("Click here"){
                print("We made a playlist for you!")
            }
        
            Text("We made a playlist for you!")
                .padding()
            Image("playlist")
                .resizable()
                .frame(width: 200.0, height: 200.0)
                .cornerRadius(10)
                .padding(.bottom, 10.0)
            Spacer()
            
        }
        .navigationBarBackButtonHidden(true)
        .padding()
        
       
    }
}

struct GeneratePlaylist_Previews: PreviewProvider {
    static var previews: some View {
        GeneratePlaylist(selectedGenreArray: ["Pop", "Rock", "HipHop"])
    }
}


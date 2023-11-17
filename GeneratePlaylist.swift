//
//  ContentView.swift
//  ios music app
//
//
//

import SwiftUI

struct GeneratePlaylist: View {
    var array: [String]
    
    var body: some View {
        VStack {
            //List(array, id: \.self) { genre in
            //                Text(genre)
           // }
            //.listStyle(InsetGroupedListStyle())
                        
            Spacer()
        }
       
        
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
            
            VStack(alignment: .leading) {
                Text("Selected Genres:")
                    .font(.headline)
                    .padding(.bottom, 5)
                
                ForEach(array, id: \.self) { genre in
                    Text(genre)
                        .padding(.bottom, 2)
                        //.padding(2)
           
                }
            }
            .padding(.bottom, 200) // genres close to pic
        }
        .navigationBarBackButtonHidden(true)
        .padding()
        
       
    }
}

//Preview
#Preview{
    GeneratePlaylist(array: ["Pop", "Hip-Hop", "Country", "Rock", "Dance/Electronic", "Radio", "New Realeases"])
}

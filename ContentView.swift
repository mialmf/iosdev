//
//  ContentView.swift
//  ios music app
//
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
        .padding()
        
       
    }
}

#Preview {
    ContentView()
}

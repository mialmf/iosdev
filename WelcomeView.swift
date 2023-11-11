//
//  WelcomeView.swift
//  Mixtify
//
//  Created by Mia Felipe on 11/8/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
            Text("Mixtify")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .padding()
            Button("Continue") {
                
            }
        }
       
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

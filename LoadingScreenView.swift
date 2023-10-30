//
//  LoadingScreenView.swift
//  Mixify
//
//  Created by Moller M on 10/29/23.
//

import SwiftUI

struct LoadingScreenView: View {
    var body: some View {
       VStack {
            Image("LoadingCat")         //calls "LoadingCat" image from 'Assets'
                .imageScale(.large)
                .offset(y:80)           //coordinates of image on screen
                .foregroundStyle(.blue)
                .padding()              //creates "padding" space around image or text
        }
        
        VStack() {
            Image("LoadingNote1")       //calls "LoadingNote1" image from 'Assets'
                .offset(x:-130)
            Image("LoadingNote2")       //calls "LoadingNote2" image from 'Assets'
                .offset(y:-90)
            Image("LoadingNote3")       //calls "LoadingNote3" image from 'Assets'
                .offset(x:130, y:-190)
            
            Text("Generating a playlist just for you!")
                .bold()
                .offset(y:-130)
        }
        .padding() //margin             //creates padding/margin around screen
    }
}

#Preview {
    LoadingScreenView()
}

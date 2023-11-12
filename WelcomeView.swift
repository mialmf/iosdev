//
//  WelcomeView.swift
//  Mixtify
//
//  Created by Mia Felipe on 11/8/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Mixtify")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                    .padding()
                
                
               
                        NavigationLink("Continue", destination: GridView())
                }
            }
            
        }
    }


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

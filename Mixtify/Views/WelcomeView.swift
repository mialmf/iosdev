//
//  WelcomeView.swift
//  Mixtify
//
//  Created by Mia Felipe on 11/8/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("MixtifyLogo")
                
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

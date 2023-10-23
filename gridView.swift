//
//  gridView.swift
//  iosdev
//
//  Created by Mia Felipe on 10/23/23.
//

import SwiftUI
import CoreData

struct gridView: View {
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
    
    var body: some View {
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
            
            if (selectedGenre == Color.pink) {
                if (entriesTot >= entriesMax){
                    
                    }
                }
                
                if (selectedGenre == Color.red) {
                    if (entriesTot >= entriesMax){
                        
                    }
                }
                
                if (selectedGenre == Color.mint) {
                    if (entriesTot >= entriesMax){
                        
                    }
                }
                
                if (selectedGenre == Color.blue) {
                    if (entriesTot >= entriesMax){
                        
                    }
                }
                
                if (selectedGenre == Color.green) {
                    if (entriesTot >= entriesMax){
                        
                    }
                }
                
                if (selectedGenre == Color.purple) {
                    if (entriesTot >= entriesMax){
                        
                    }
                }
                
                
                
                
                //            Button(action: generateList){
                //                Text("Generate!")
                
                //        }
                
                
                
            }
        }
    }



struct gridView_Previews: PreviewProvider {
    static var previews: some View {
        gridView()
    }
}

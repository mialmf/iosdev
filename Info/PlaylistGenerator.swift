//
//  GenreGenerator.swift
//  Mixtify
//
//  Created by Mia Felipe on 11/10/23.
//

import Foundation
import SwiftUI


struct PlaylistGenerator: Hashable, Codable, Identifiable {
    var genres: [String]
    
    private var genreImage: String
    var image: Image{
        Image(genreImage)
    }
    
    
}


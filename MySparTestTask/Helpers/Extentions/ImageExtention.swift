//
//  ImageExtention.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

extension Image {
    enum Content {
        static let sparLipa = Image("SparLipa")
        static let spainFlag = Image("SpainFlag")
    }
    
    enum Navigation {
        static let arrowBack = Image(systemName: "arrow.left")
        static let heart = Image(systemName: "heart")
        static let filledHeart = Image(systemName: "heart.fill")
        static let share = Image(systemName: "square.and.arrow.up")
        static let check = Image(systemName: "doc.plaintext")
    }
    
    enum Icons {
        static let star = Image(systemName: "star.fill")
        static let plus = Image(systemName: "plus")
        static let minus = Image(systemName: "minus")
        static let main = Image(systemName: "arrowshape.up.circle")
        static let catalog = Image(systemName: "circle.grid.2x2")
        static let cart = Image(systemName: "cart")
        static let profile = Image(systemName: "person")
    }
    
}

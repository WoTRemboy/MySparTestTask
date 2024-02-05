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
        static let spainFlag = Image("Flag")
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
        static let main = Image("MainTabIcon")
        static let catalog = Image("CatalogTabIcon")
        static let cart = Image("CartTabIcon")
        static let profile = Image("ProfileTabIcon")
    }
    
}

extension UIImage {
    enum Content {
        static let sparLipa = UIImage(named: "SparLipa")
        static let spainFlag = UIImage(named: "Flag")
        static let noImage = UIImage(named: "NoImage")
    }
}

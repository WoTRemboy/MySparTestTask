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
        static let share = Image(systemName: "square.and.arrow.up")
        static let check = Image(systemName: "doc.plaintext")
    }
    
    enum Icons {
        static let star = Image(systemName: "star.fill")
    }
    
}

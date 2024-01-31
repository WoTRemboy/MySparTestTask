//
//  FontExtention.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

extension Font {
    static func largeTitle() -> Font? {
        Font.system(size: 38, weight: .bold)
    }
    
    static func totalPrice() -> Font? {
        Font.system(size: 30, weight: .medium)
    }
    
    static func segmentTitle() -> Font? {
        Font.system(size: 25, weight: .medium)
    }
    
    static func title() -> Font? {
        Font.system(size: 20, weight: .medium)
    }
    
    static func separator() -> Font? {
        Font.system(size: 20, weight: .light)
    }
    
    static func headline() -> Font? {
        Font.system(size: 17, weight: .medium)
    }
    
    static func body() -> Font? {
        Font.system(size: 17, weight: .light)
    }
    
    static func subhead() -> Font? {
        Font.system(size: 15, weight: .light)
    }
    
    static func footnote() -> Font? {
        Font.system(size: 13, weight: .medium)
    }
}

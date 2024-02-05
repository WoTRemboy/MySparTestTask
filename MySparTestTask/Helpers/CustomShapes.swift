//
//  CustomShapes.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 03.02.2024.
//

import SwiftUI

// MARK: ImagePresentView shape
struct CurvedRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.size.width
        let height = rect.size.height
        
        path.move(to: CGPoint(x: 0, y: height / 3))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addQuadCurve(to: CGPoint(x: width, y: height), control: CGPoint(x: width / 2, y: height * 1.2))
        
        path.addLine(to: CGPoint(x: width * 6/7, y: 0))
        path.addQuadCurve(to: CGPoint(x: 0, y: height / 3), control: CGPoint(x: width / 2, y: height / 2.5))
        
        return path
    }
}

// MARK: CharacteristicsView shape
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 5))
        path.addLine(to: CGPoint(x: rect.width, y: 5))
        return path
    }
}

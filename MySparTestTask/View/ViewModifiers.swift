//
//  ViewModifiers.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct NavigationSetup: ViewModifier {
    let size: CGSize
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.IconColors.iconsForeground)
            .frame(width: size.width, height: size.height)
    }
}

struct CardPriceSetup: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.LabelColors.labelWhite)
            .padding(8)
            .background(Color.IconColors.cardPriceBackground)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

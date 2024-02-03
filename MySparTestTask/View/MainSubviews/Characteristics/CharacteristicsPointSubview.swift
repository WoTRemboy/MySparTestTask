//
//  CharacteristicsPointSubview.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 03.02.2024.
//

import SwiftUI

struct CharacteristicsPointSubview: View {
    private let title: String
    private let value: String
    
    private let minTitleWidth: CGFloat
    private let minValueWidth: CGFloat
    private let bottomPadding: CGFloat
    
    init(title: String, value: String, minTitleWidth: CGFloat = .leastNormalMagnitude, minValueWidth: CGFloat = .leastNormalMagnitude, bottomPadding: CGFloat = 0) {
        
        self.title = title
        self.value = value
        self.minTitleWidth = minTitleWidth
        self.minValueWidth = minValueWidth
        self.bottomPadding = bottomPadding
    }
    
    internal var body: some View {
        HStack {
            Text(title)
                .padding(.leading)
                .frame(minWidth: minTitleWidth)
                .font(.subhead())
            Spacer()
            Line()
                .stroke(style: .init(dash: [2]))
                .foregroundStyle(Color.LabelColors.labelTertiary)
                .frame(height: 1)
            Spacer()
            Text(value)
                .multilineTextAlignment(.trailing)
                .font(.subhead())
                .padding(.bottom, bottomPadding)
                .frame(minWidth: minValueWidth)
                .padding(.trailing)
        }
    }
}

struct CharacteristicsPointSubview_Previews: PreviewProvider {
    static var previews: some View {
        CharacteristicsPointSubview(title: Texts.Content.carbohydrates, value: Texts.MockData.carbohydrates)
    }
}

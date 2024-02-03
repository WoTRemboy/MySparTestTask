//
//  CharacteristicsView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct CharacteristicsView: View {
    private let chars: Characteristics
    
    init(chars: Characteristics) {
        self.chars = chars
    }
    
    internal var body: some View {
        VStack {
            title
            production
            energy
            fats
            squirrels
            carbohydrates
            allChars
        }
    }
    
    private var title: some View {
        VStack {
            HStack {
                Text(Texts.Content.main)
                    .font(.boldHeadline())
                    .padding(.leading)
                Spacer()
            }
        }
    }
    
    private var production: some View {
        CharacteristicsPointSubview(title: Texts.Content.production, value: "\(chars.production.country), \(chars.production.town)", minTitleWidth: 90, minValueWidth: 180, bottomPadding: -18)
        .padding(.top, 1)
    }
    
    private var energy: some View {
        CharacteristicsPointSubview(title: Texts.Content.energy, value: chars.calories, minTitleWidth: 164)
        .padding(.top, 20)
    }
    
    private var fats: some View {
        CharacteristicsPointSubview(title: Texts.Content.fats, value: chars.fats)
        .padding(.top, 10)
    }
    
    private var squirrels: some View {
        CharacteristicsPointSubview(title: Texts.Content.squirrels, value: chars.squirrels)
        .padding(.top, 10)
    }
    
    private var carbohydrates: some View {
        CharacteristicsPointSubview(title: Texts.Content.carbohydrates, value: chars.carbohydrates)
        .padding(.top, 10)
    }
    
    private var allChars: some View {
        HStack {
            Button(action: {}, label: {
                Text(Texts.Content.allChars)
                    .font(.boldHeadline())
                    .foregroundStyle(Color.IconColors.iconsForeground)
            })
            .padding()
            Spacer()
        }
    }
}

struct CharacteristicsView_Previews: PreviewProvider {
    static var previews: some View {
        CharacteristicsView(chars: MockData.mockItem.characteristics)
    }
}

//
//  CharacteristicsView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct CharacteristicsView: View {
    let chars: Characteristics
    
    var body: some View {
        characteristics
    }
    
    var characteristics: some View {
        VStack {
            HStack {
                Text("Основные характеристики")
                    .font(.boldHeadline())
                    .padding(.leading)
                Spacer()
            }
            HStack {
                Text("Производство")
                    .padding(.leading)
                    .font(.subhead())
                Spacer()
                Text("..............")
                Spacer()
                Text("\(chars.production.country), \(chars.production.town)")
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.bottom, -18)
                    .padding(.trailing)
            }
            .padding(.top, 1)
            HStack {
                Text("Энергетическая ценность, ккал/100 г")
                    .padding(.leading)
                    .font(.subhead())
                Spacer()
                Text("............................")
                Spacer()
                Text(chars.calories)
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.trailing)
            }
            .padding(.top, 20)
            HStack {
                Text("Жиры/100 г")
                    .padding(.leading)
                    .font(.subhead())
                Spacer()
                Text(".................................................")
                Spacer()
                Text(chars.fats)
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.trailing)
            }
            .padding(.top, 10)
            HStack {
                Text("Белки/100 г")
                    .padding(.leading)
                    .font(.subhead())
                Spacer()
                Text(".................................................")
                Spacer()
                Text(chars.squirrels)
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.trailing)
            }
            .padding(.top, 10)
            HStack {
                Text("Углеводы/100 г")
                    .padding(.leading)
                    .font(.subhead())
                Spacer()
                Text("...........................................")
                Spacer()
                Text(chars.carbohydrates)
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.trailing)
            }
            .padding(.top, 10)
            HStack {
                Button(action: {}, label: {
                    Text("Все характеристики")
                        .font(.boldHeadline())
                        .foregroundStyle(Color.IconColors.iconsForeground)
                })
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    CharacteristicsView(chars: MockData.item.characteristics)
}

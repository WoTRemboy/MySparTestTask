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
    
    // MARK: Every characteristics point
    var characteristics: some View {
        VStack {
            HStack {
                Text(Texts.Content.main)
                    .font(.boldHeadline())
                    .padding(.leading)
                Spacer()
            }
            
            HStack {
                Text(Texts.Content.production)
                    .padding(.leading)
                    .frame(minWidth: 90)
                    .font(.subhead())
                Spacer()
                Line()
                    .stroke(style: .init(dash: [2]))
                    .foregroundStyle(.labelTertiary)
                    .frame(height: 1)
                Spacer()
                Text("\(chars.production.country), \(chars.production.town)")
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.bottom, -18)
                    .frame(minWidth: 180)
                    .padding(.trailing)
            }
            .padding(.top, 1)
            
            HStack {
                Text(Texts.Content.energy)
                    .padding(.leading)
                    .font(.subhead())
                    .frame(minWidth: 164)
                Spacer()
                Line()
                    .stroke(style: .init(dash: [2]))
                    .foregroundStyle(.labelTertiary)
                    .frame(height: 1)
                Spacer()
                Text(chars.calories)
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.trailing)
            }
            .padding(.top, 20)
            
            HStack {
                Text(Texts.Content.fats)
                    .padding(.leading)
                    .font(.subhead())
                Spacer()
                Line()
                    .stroke(style: .init(dash: [2]))
                    .foregroundStyle(.labelTertiary)
                    .frame(height: 1)
                Spacer()
                Text(chars.fats)
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.trailing)
            }
            .padding(.top, 10)
            
            HStack {
                Text(Texts.Content.squirrels)
                    .padding(.leading)
                    .font(.subhead())
                Spacer()
                Line()
                    .stroke(style: .init(dash: [2]))
                    .foregroundStyle(.labelTertiary)
                    .frame(height: 1)
                Spacer()
                Text(chars.squirrels)
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.trailing)
            }
            .padding(.top, 10)
            
            HStack {
                Text(Texts.Content.carbohydrates)
                    .padding(.leading)
                    .font(.subhead())
                Spacer()
                Line()
                    .stroke(style: .init(dash: [2]))
                    .foregroundStyle(.labelTertiary)
                    .frame(height: 1)
                Spacer()
                Text(chars.carbohydrates)
                    .multilineTextAlignment(.trailing)
                    .font(.subhead())
                    .padding(.trailing)
            }
            .padding(.top, 10)
            
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
}

// MARK: Dot line setup
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 5))
        path.addLine(to: CGPoint(x: rect.width, y: 5))
        return path
    }
}

#Preview {
    CharacteristicsView(chars: MockData.item.characteristics)
}

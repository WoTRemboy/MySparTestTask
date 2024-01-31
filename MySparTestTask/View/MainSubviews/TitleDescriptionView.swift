//
//  TitleDescriptionView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct TitleDescriptionView: View {
    let name: String
    let homeland: Homeland
    let descriptionText: String
    
    var body: some View {
        VStack {
            title
            country
            description
        }
    }
    
    var title: some View {
        HStack {
            Text(name)
                .font(.largeTitle())
                .padding(.horizontal)
            Spacer()
        }
    }
    
    var country: some View {
        HStack {
            homeland.image?
                .resizable()
                .frame(width: 25, height: 25)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.leading)
            Text("\(homeland.country), \(homeland.town)")
                .padding(.leading, 5)
            Spacer()
        }
    }
    
    var description: some View {
        VStack {
            HStack {
                Text(Texts.Content.description)
                    .font(.boldHeadline())
                Spacer()
            }
            HStack {
                Text(descriptionText)
                    .padding(.top, 1)
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    TitleDescriptionView(name: MockData.item.name, homeland: MockData.item.homeland, descriptionText: MockData.item.description)
}

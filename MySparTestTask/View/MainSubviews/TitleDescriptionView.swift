//
//  TitleDescriptionView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct TitleDescriptionView: View {
    private let name: String
    private let homeland: Homeland
    private let descriptionText: String
    
    init(name: String, homeland: Homeland, descriptionText: String) {
        self.name = name
        self.homeland = homeland
        self.descriptionText = descriptionText
    }
    
    internal var body: some View {
        VStack {
            title
            country
            description
        }
    }
    
    private var title: some View {
        HStack {
            Text(name)
                .font(.largeTitle())
                .padding(.horizontal)
            Spacer()
        }
    }
    
    private var country: some View {
        HStack {
            AsyncImage(url: URL(string: homeland.image ?? "")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
                .modifier(OriginCountryImageSetup())
            Text("\(homeland.country), \(homeland.town)")
                .padding(.leading, 5)
            Spacer()
        }
    }
    
    private var description: some View {
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

struct TitleDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        TitleDescriptionView(name: MockData.mockItem.name, homeland: MockData.mockItem.homeland, descriptionText: MockData.mockItem.description)
    }
}

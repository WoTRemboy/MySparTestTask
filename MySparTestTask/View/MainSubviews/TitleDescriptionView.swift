//
//  TitleDescriptionView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct TitleDescriptionView: View {
    @StateObject private var viewModel = ViewModel()
    
    private let name: String
    private let homeland: Homeland
    private let descriptionText: String
    private let imageURL: String
    
    init(name: String, homeland: Homeland, descriptionText: String, imageURL: String) {
        self.name = name
        self.homeland = homeland
        self.descriptionText = descriptionText
        self.imageURL = imageURL
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
            Image(uiImage: viewModel.image ?? UIImage())
                .resizable()
                .onAppear {
                    viewModel.loadImage(urlString: imageURL)
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
        TitleDescriptionView(name: MockData.mockItem.name, homeland: MockData.mockItem.homeland, descriptionText: MockData.mockItem.description, imageURL: MockData.mockItem.homeland.image ?? "")
    }
}

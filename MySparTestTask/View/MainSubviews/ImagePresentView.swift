//
//  ImagePresentView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct ImagePresentView: View {
    private let averageRating: Float
    private let reviewsCount: String
    private let sale: String
    private let imageData: String
    
    init(averageRating: Float, reviewsCount: String, sale: String, imageData: String) {
        self.averageRating = averageRating
        self.reviewsCount = reviewsCount
        self.sale = sale
        self.imageData = imageData
    }
    
    internal var body: some View {
        VStack {
            cardPrice
            image
            reviews
        }
    }
    
    private var cardPrice: some View {
        HStack {
            Text(Texts.Content.cardPrice)
                .modifier(CardPriceSetup())
            Spacer()
        }
    }
    
    private var image: some View {
        AsyncImage(url: URL(string: MockData.mockItem.image)) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
            .frame(width: 220, height: 220)
    }
    
    private var reviews: some View {
        HStack {
            Image.Icons.star
                .padding(.leading, 20)
                .foregroundStyle(Color.IconColors.starHighlighted)
            
            Text(String(averageRating))
                .font(.headline())
                .padding(.leading, -5)
            
            Text("|")
                .font(.separator())
                .modifier(TertiaryReviewTextSetup())
                .padding(.bottom, 5)
            
            Text("\(reviewsCount)")
                .font(.headline())
                .modifier(TertiaryReviewTextSetup())
            
            Spacer()
            Text(sale)
                .modifier(SaveViewSetup())
        }
    }
}

struct ImagePresentView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePresentView(averageRating: 4.1, reviewsCount: Texts.MockData.reviewCount, sale: Texts.MockData.sale, imageData: MockData.mockItem.image)
    }
}

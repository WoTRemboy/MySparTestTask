//
//  ReviewsView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct ReviewsView: View {
    private var reviewsData: [Review]
    
    init(reviewsData: [Review]) {
        self.reviewsData = reviewsData
    }
        
    internal var body: some View {
        top
        reviews
        newReview
    }
    
    private var top: some View {
        HStack {
            Text(Texts.Content.reviews)
                .font(.title())
                .padding(.leading)
            Spacer()
            Button(action: {}, label: {
                Text("\(Texts.Content.allReviews) \(reviewsData.count)")
                    .foregroundColor(Color.IconColors.iconsForeground)
                    .font(.boldHeadline())
            })
            .padding(.trailing)
        }
    }
    
    private var reviews: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(reviewsData, id: \.id) { review in
                    ReviewCell(review: review) // custom review cell
                }
                
            }
            .padding()
        }
    }
    
    private var newReview: some View {
        Button(action: {}, label: {
            Text(Texts.Content.publishReview)
                .modifier(NewReviewButtonSetup())
        })
    }
}

struct ReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsView(reviewsData: MockData.mockItem.reviews)
    }
}

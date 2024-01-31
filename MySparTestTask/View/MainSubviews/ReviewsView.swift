//
//  ReviewsView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct ReviewsView: View {
    var reviewsData: [Review]
        
    var body: some View {
        top
        reviews
        newReview
    }
    
    var top: some View {
        HStack {
            Text(Texts.Content.reviews)
                .font(.title())
                .padding(.leading)
            Spacer()
            Button(action: {}, label: {
                Text("\(Texts.Content.allReviews) \(reviewsData.count)")
                    .foregroundStyle(Color.IconColors.iconsForeground)
                    .font(.boldHeadline())
            })
            .padding(.trailing)
        }
    }
    
    var reviews: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(reviewsData, id: \.id) { review in
                    ReviewCell(review: review) // custom review cell
                }
                
            }
            .padding()
        }
    }
    
    var newReview: some View {
        Button(action: {}, label: {
            Text(Texts.Content.publishReview)
                .font(.boldHeadline())
                .foregroundStyle(Color.IconColors.iconsForeground)
            
                .frame(
                    width: UIScreen.main.bounds.width - 32,
                    height: 35)
            
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.IconColors.iconsForeground, lineWidth: 2)
                )
        })
    }
}

#Preview {
    ReviewsView(reviewsData: MockData.item.reviews)
}

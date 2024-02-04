//
//  ReviewCell.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct ReviewCell: View {
    
    private var review: Review
    
    init(review: Review) {
        self.review = review
    }
    
    internal var body: some View {
        VStack {
            name
            date
            ratingStars
            description
        }
        .modifier(ReviewCellSetup())
    }
    
    private var name: some View {
        HStack {
            Text(review.userName)
                .font(.boldHeadline())
            Spacer()
        }
    }
    
    private var date: some View {
        HStack {
            Text(Date.formattedDate(date: review.date))
                .font(.subhead())
                .foregroundColor(Color.LabelColors.labelTertiary)
                .padding(.top, -3)
            Spacer()
        }
    }
    
    private var ratingStars: some View {
        HStack {
            stars
                .padding(.top, -3)
            Spacer()
        }
    }
    
    private var description: some View {
        HStack {
            Text(review.description)
                .font(.subhead())
                .padding(.top, 5)
            Spacer()
        }
    }
    
    private var stars: some View {
        HStack {
            ForEach(1..<6) { index in
                Image.Icons.star
                    .foregroundColor(index <= review.rating ? Color.IconColors.starHighlighted : Color.IconColors.starDownplay)
                    .font(.subhead())
            } // to show stars depanding on rating data
        }
    }
}

struct ReviewCell_Previews: PreviewProvider {
    static var previews: some View {
        ReviewCell(review: MockData.mockItem.reviews[0])
    }
}

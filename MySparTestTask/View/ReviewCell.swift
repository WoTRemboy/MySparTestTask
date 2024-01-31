//
//  ReviewCell.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct ReviewCell: View {
    
    var review: Review
    
    var body: some View {
        VStack {
            name
            date
            ratingStars
            description
        }
        .padding(.leading, 10)
        .frame(width: 250, height: 160)
        .background(Color.BackColors.backDefault)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color.BackColors.backSplash, radius: 10)
    }
    
    var name: some View {
        HStack {
            Text(review.userName)
                .font(.boldHeadline())
            Spacer()
        }
    }
    
    var date: some View {
        HStack {
            Text(Date.formattedDate(date: review.date))
                .font(.subhead())
                .foregroundStyle(Color.labelTertiary)
                .padding(.top, -3)
            Spacer()
        }
    }
    
    var ratingStars: some View {
        HStack {
            stars
                .padding(.top, -3)
            Spacer()
        }
    }
    
    var description: some View {
        HStack {
            Text(review.description)
                .padding(.top, 5)
                .font(.subhead())
            Spacer()
        }
    }
    
    var stars: some View {
        HStack {
            ForEach(1..<6) { index in
                Image.Icons.star
                    .foregroundStyle(index <= review.rating ? Color.IconColors.starHighlighted : Color.IconColors.starDownplay)
                    .font(.subhead())
            }
        }
    }
}

#Preview {
    ReviewCell(review: MockData.item.reviews[0])
}

//
//  ImagePresentView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct ImagePresentView: View {
    let averageRating: Float
    let reviewsCount: String
    let sale: String
    
    var body: some View {
        VStack {
            Divider()
            cardPrice
            image
            reviews
        }
    }
    
    var cardPrice: some View {
        HStack {
            Text(Texts.cardPrice)
                .font(.footnote)
                .modifier(CardPriceSetup())
                .padding(.leading)
            Spacer()
        }
    }
    
    var image: some View {
        Image.Content.sparLipa
            .resizable()
            .frame(width: 530 / 3.5, height: 880 / 4)
    }
    
    var reviews: some View {
        HStack {
            Image.Icons.star
                .padding(.leading, 20)
                .foregroundStyle(Color.IconColors.starHighlighted)
            
            Text(String(averageRating))
                .font(.headline())
                .padding(.leading, -5)
            
            Text("|")
                .font(.separator())
                .foregroundStyle(Color.labelTertiary)
                .padding(.leading, -5)
                .padding(.bottom, 5)
            
            Text("\(reviewsCount)")
                .font(.headline())
                .foregroundStyle(Color.labelTertiary)
                .padding(.leading, -5)
            
            Spacer()
            Text("-5%")
                .font(.footnote())
                .foregroundStyle(Color.LabelColors.labelWhite)
                .padding(.top, 8)
                
                .background(CurvedRectangle()
                    .foregroundColor(.IconColors.saleBackground)
                    .frame(width: 50, height: 28))
                .padding(.trailing, 25)
        }
    }
}

struct CurvedRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.size.width
        let height = rect.size.height
        
        path.move(to: CGPoint(x: 0, y: height / 3))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addQuadCurve(to: CGPoint(x: width, y: height), control: CGPoint(x: width / 2, y: height * 1.2))
        
        path.addLine(to: CGPoint(x: width * 6/7, y: 0))
        path.addQuadCurve(to: CGPoint(x: 0, y: height / 3), control: CGPoint(x: width / 2, y: height / 2.5))

        return path
    }
}


#Preview {
    ImagePresentView(averageRating: 4.1, reviewsCount: "19 отзывов", sale: "-5%")
}

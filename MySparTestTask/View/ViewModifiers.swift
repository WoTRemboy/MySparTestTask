//
//  ViewModifiers.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI


// MARK: MainView modifier
struct NavigationSetup: ViewModifier {
    private let size: CGSize
    
    init(size: CGSize) {
        self.size = size
    }
    
    internal func body(content: Content) -> some View {
        content
            .font(.segmentTitle())
            .foregroundColor(Color.IconColors.iconsForeground)
            .frame(width: size.width, height: size.height)
    }
}

// MARK: ImagePresentView modifiers
struct CardPriceSetup: ViewModifier {
    internal func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(Color.LabelColors.labelWhite)
            .padding(8)
            .background(Color.IconColors.cardPriceBackground)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.leading)
    }
}

struct TertiaryReviewTextSetup: ViewModifier {
    internal func body(content: Content) -> some View {
        content
            .foregroundColor(Color.LabelColors.labelTertiary)
            .padding(.leading, -5)
    }
}

struct SaveViewSetup: ViewModifier {
    internal func body(content: Content) -> some View {
        content
            .font(.footnote())
            .foregroundColor(Color.LabelColors.labelWhite)
            .padding(.top, 8)
            .background(CurvedRectangle()
                .foregroundColor(.IconColors.saleBackground)
                .frame(width: 50, height: 28))
            .padding(.trailing, 25)
    }
}

// MARK: TitleDescriptionView modifier
struct OriginCountryImageSetup: ViewModifier {
    internal func body(content: Content) -> some View {
        content
            .frame(width: 25, height: 25)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.leading)
    }
}

// MARK: ReviewsView modifier
struct NewReviewButtonSetup: ViewModifier {
    internal func body(content: Content) -> some View {
        content
            .font(.boldHeadline())
            .foregroundColor(Color.IconColors.iconsForeground)
        
            .frame(
                width: UIScreen.main.bounds.width - 32,
                height: 35)
        
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.IconColors.iconsForeground, lineWidth: 2)
            )
    }
}

// MARK: ReviewCell modifier
struct ReviewCellSetup: ViewModifier {
    internal func body(content: Content) -> some View {
        content
            .padding(.leading, 10)
            .frame(width: 250, height: 160)
            .background(Color.BackColors.backDefault)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: Color.BackColors.backSplash, radius: 10)
    }
}


// MARK: PriceView modifiers
struct DividerSetup: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.LabelColors.labelWhite)
            .shadow(color: Color.black, radius: 4, x: 0, y: -2)
            .padding(.top)
    }
}

struct OldPriceSetup: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subhead())
            .padding(.leading, 20)
            .foregroundColor(Color.LabelColors.labelTertiary)
    }
}

struct TotalPriceSetup: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.cart())
            .foregroundColor(Color.LabelColors.labelWhite)
            .frame(width: 50)
    }
}

struct CounterBackgroundSetup: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical, 5)
            .background(Color.IconColors.counterBackground)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

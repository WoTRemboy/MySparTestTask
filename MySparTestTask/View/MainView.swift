//
//  ContentView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct MainView: View {
    
    @State var isLiked = false
        
    // MARK: Views with mock data
    let imagePreview = ImagePresentView(averageRating: 4.1, reviewsCount: Texts.MockData.reviewCount, sale: Texts.MockData.sale)
    let titleDescriprion = TitleDescriptionView(name: MockData.item.name, homeland: MockData.item.homeland, descriptionText: MockData.item.description)
    let characteristics = CharacteristicsView(chars: MockData.item.characteristics)
    let reviews = ReviewsView(reviewsData: MockData.item.reviews)
    let price = PriceView(prices: MockData.item.price)
    
    // MARK: Main view
    var body: some View {
        TabView {
        NavigationView {
                VStack(spacing: 0) {
                    Divider()
                    ScrollView{
                        Spacer()
                        LazyVStack {
                            imagePreview
                            titleDescriprion
                            characteristics
                            reviews
                            price
                        }
                    }
                    .navigationBarItems(leading: leadingNavButton, trailing: trailingNavButtons)
                }
            
        }
        .tabItem {
            Image.Icons.main
                .environment(\.symbolVariants, .none)
            Text(Texts.Tabs.main)
        }
            CatalogView()
                .tabItem {
                    Image.Icons.catalog
                        .environment(\.symbolVariants, .none)
                    Text(Texts.Tabs.catalog)
                }
            
            CartView()
                .tabItem {
                    Image.Icons.cart
                        .environment(\.symbolVariants, .none)
                    Text(Texts.Tabs.cart)
                }
            
            ProfileView()
                .tabItem {
                    Image.Icons.profile
                        .environment(\.symbolVariants, .none)
                    Text(Texts.Tabs.profile)
                }
        }
    }
    
    // MARK: Navigation buttons
    var leadingNavButton: some View {
        Button(action: {}, label: {
            Image.Navigation.arrowBack
                .fontWeight(.medium)
                .modifier(NavigationSetup(size: CGSize(width: 20, height: 25)))
        })
    }
    
    var trailingNavButtons: some View {
        HStack {
            Spacer()
            Button(action: {}, label: {
                Image.Navigation.check
                    .resizable()
                    .fontWeight(.medium)
                    .modifier(NavigationSetup(size: CGSize(width: 20, height: 25)))
            })
            .padding(.trailing, 6)
            
            Button(action: {}, label: {
                Image.Navigation.share
                    .resizable()
                    .fontWeight(.medium)
                    .modifier(NavigationSetup(size: CGSize(width: 20, height: 25)))
            })
            .padding(.trailing, 6)
            
            Button(action: {
                withAnimation {
                    isLiked.toggle() // animated heart button
                }
            }, label: {
                (isLiked ? Image.Navigation.filledHeart : Image.Navigation.heart)
                    .resizable()
                    .fontWeight(.medium)
                    .modifier(NavigationSetup(size: CGSize(width: 23, height: 23)))
            })
            .padding(.bottom, -4)
        }
    }
}

#Preview {
    MainView()
}

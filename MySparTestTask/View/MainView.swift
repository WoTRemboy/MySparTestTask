//
//  ContentView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel = ViewModel()
    
    // MARK: Main view
    internal var body: some View {
        TabView {
        NavigationView {
                VStack(spacing: 0) {
                    Divider()
                    ScrollView{
                        Spacer()
                        LazyVStack {
                            ImagePresentView(averageRating: 4.1, reviewsCount: Texts.MockData.reviewCount, sale: Texts.MockData.sale, imageURL: MockData.mockItem.image)
                            
                            TitleDescriptionView(name: MockData.mockItem.name, homeland: MockData.mockItem.homeland, descriptionText: MockData.mockItem.description, imageURL: MockData.mockItem.homeland.image ?? "")
                            
                            CharacteristicsView(chars: MockData.mockItem.characteristics)
                            
                            ReviewsView(reviewsData: MockData.mockItem.reviews)
                            
                            PriceView(prices: MockData.mockItem.price)
                        }
                    }
                    .navigationBarItems(leading: leadingNavButton, trailing: trailingNavButtons)
                }
            
        }
        .tabItem {
            Image.Icons.main
//                .environment(\.symbolVariants, .none)
            Text(Texts.Tabs.main)
        }
            CatalogView()
            CartView()
            ProfileView()
        }
    }
    
    // MARK: Navigation buttons
    private var leadingNavButton: some View {
        Button(action: {}, label: {
            Image.Navigation.arrowBack
                .resizable()
                .modifier(NavigationSetup(size: CGSize(width: 20, height: 20)))
        })
    }
    
    private var trailingNavButtons: some View {
        HStack {
            Spacer()
            Button(action: {}, label: {
                Image.Navigation.check
                    .resizable()
                    .modifier(NavigationSetup(size: CGSize(width: 20, height: 25)))
            })
            .padding(.trailing, 6)
            
            Button(action: {}, label: {
                Image.Navigation.share
                    .resizable()
                    .modifier(NavigationSetup(size: CGSize(width: 20, height: 25)))
            })
            .padding(.trailing, 6)
            
            Button(action: {
                withAnimation {
                    viewModel.toggleLike() // animated heart button
                }
            }, label: {
                (viewModel.isLiked ? Image.Navigation.filledHeart : Image.Navigation.heart)
                    .resizable()
                    .modifier(NavigationSetup(size: CGSize(width: 23, height: 23)))
            })
            .padding(.bottom, -4)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

//
//  ContentView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct MainView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
        
    let imagePreview = ImagePresentView(averageRating: 4.1, reviewsCount: "19 отзывов", sale: "-5%")
    let titleDescriprion = TitleDescriptionView(name: MockData.item.name, homeland: MockData.item.homeland, descriptionText: MockData.item.description)
    let characteristics = CharacteristicsView(chars: MockData.item.characteristics)
    let reviews = ReviewsView(reviewsData: MockData.item.reviews)
    
    var body: some View {
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
                    }
                }
                .navigationBarItems(leading: leadingNavButton, trailing: trailingNavButtons)
                
            }
        }
    }
    
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
            
            Button(action: {}, label: {
                Image.Navigation.heart
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

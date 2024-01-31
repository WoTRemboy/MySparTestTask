//
//  ViewModel.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
}

class MockData {
    static let item = Product(name: Texts.MockData.name, description: Texts.MockData.description, image: Image.Content.sparLipa, homeland: ConfigSupport.homelandConfig(), characteristics: ConfigSupport.charsConfig(), reviews: ConfigSupport.reviewConfig(count: 3), price: ConfigSupport.priceConfig())
}

class ConfigSupport {
    static func homelandConfig() -> Homeland {
        let country = Texts.MockData.homelandCountry
        let town = Texts.MockData.homelandTown
        let image = Image.Content.spainFlag
        return Homeland(country: country, town: town, image: image)
    }
    
    static func charsConfig() -> Characteristics {
        let production = Homeland(country: Texts.MockData.productionCountry, town: Texts.MockData.productionTown, image: nil)
        let calories = Texts.MockData.calories
        let fats = Texts.MockData.fats
        let squirrels = Texts.MockData.squirrels
        let carbohydrates = Texts.MockData.carbohydrates
        return Characteristics(production: production, calories: calories, fats: fats, squirrels: squirrels, carbohydrates: carbohydrates)
    }
    
    static func reviewConfig(count: Int) -> [Review] {
        var reviews = [Review]()
        
        let username = Texts.MockData.userName
        let date = Date.configMockDate()
        let rating = 4
        let descriprion = Texts.MockData.reviewDescription
        
        for _ in 0..<count {
            reviews.append(Review(userName: username, date: date, rating: rating, description: descriprion))
        }
        return reviews
    }
    
    static func priceConfig() -> Price {
        let regularKgPrice: Float = 199.0
        let currentKgPrice: Float = 55.9
        let regularItemPrice: Float = 399.0
        let currentItemPrice: Float = 120.0
        
        return Price(regularKgPrice: regularKgPrice, currentKgPrice: currentKgPrice, regularItemPrice: regularItemPrice, currentItemPrice: currentItemPrice)
    }
}

//
//  Model.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import Foundation
import SwiftUI

struct Product {
    let id: String = UUID().uuidString
    let name: String
    let description: String
    let image: String
    let homeland: Homeland
    let characteristics: Characteristics
    let reviews: [Review]
    let price: Price
    
    static internal func itemMockConfig() -> Product {
        let name = Texts.MockData.name
        let description = Texts.MockData.description
        let image = Texts.MockData.itemImage
        let homeland = Homeland.itemHomelandMockConfig()
        let characteristics = Characteristics.charsMockConfig()
        let reviews = Review.reviewMockConfig(count: 3)
        let price = Price.priceMockConfig()
        
        return Product(name: name, description: description, image: image, homeland: homeland, characteristics: characteristics, reviews: reviews, price: price)
    }
}

struct Homeland {
    let country: String
    let town: String
    let image: String?
    
    static fileprivate func itemHomelandMockConfig() -> Homeland {
        let country = Texts.MockData.homelandCountry
        let town = Texts.MockData.homelandTown
        let image = Texts.MockData.countyImage
        return Homeland(country: country, town: town, image: image)
    }
    
    static fileprivate func productionHomelandMockConfig() -> Homeland {
        let country = Texts.MockData.productionCountry
        let town = Texts.MockData.productionTown
        return Homeland(country: country, town: town, image: nil)
    }
}

struct Characteristics {
    let production: Homeland
    let calories: String
    let fats: String
    let squirrels: String
    let carbohydrates: String
    
    static fileprivate func charsMockConfig() -> Characteristics {
        let production = Homeland.productionHomelandMockConfig()
        let calories = Texts.MockData.calories
        let fats = Texts.MockData.fats
        let squirrels = Texts.MockData.squirrels
        let carbohydrates = Texts.MockData.carbohydrates
        
        return Characteristics(production: production, calories: calories, fats: fats, squirrels: squirrels, carbohydrates: carbohydrates)
    }
}

struct Review {
    let id: String = UUID().uuidString
    let userName: String
    let date: Date
    let rating: Int
    let description: String
    
    static fileprivate func reviewMockConfig(count: Int) -> [Review] {
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
}

struct Price {
    let regularKgPrice: Float
    let currentKgPrice: Float
    let regularItemPrice: Float
    let currentItemPrice: Float
    
    static fileprivate func priceMockConfig() -> Price {
        let regularKgPrice: Float = 199.0
        let currentKgPrice: Float = 55.9
        let regularItemPrice: Float = 399.0
        let currentItemPrice: Float = 120.0
        
        return Price(regularKgPrice: regularKgPrice, currentKgPrice: currentKgPrice, regularItemPrice: regularItemPrice, currentItemPrice: currentItemPrice)
    }
}

enum AccountingType {
    case kg
    case units
}

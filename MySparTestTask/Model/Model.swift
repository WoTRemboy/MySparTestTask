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
    let image: Image
    let homeland: Homeland
    let characteristics: Characteristics
    let reviews: [Review]
    let price: Price
}

struct Homeland {
    let country: String
    let town: String
    let image: Image?
}

struct Characteristics {
    let production: Homeland
    let calories: String
    let fats: String
    let squirrels: String
    let carbohydrates: String
}

struct Review {
    let id: String = UUID().uuidString
    let userName: String
    let date: Date
    let rating: Int
    let description: String
}

struct Price {
    let regularKgPrice: Float // perfectly needs to be Ddecimal
    let currentKgPrice: Float
    let regularItemPrice: Float
    let currentItemPrice: Float
}

enum AccountingType {
    case kg
    case units
}

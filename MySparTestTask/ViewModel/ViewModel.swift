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
    static let item = Product(name: "Добавка \"Липа\" к чаю 200 г", description: "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.", image: Image.Content.sparLipa, homeland: Homeland(contry: "Испания", town: "Риоха", image: Image.Content.spainFlag), characteristics: Characteristics(production: Homeland(contry: "Россия", town: "Краснодарский край", image: nil), calories: "25 ккал, 105 кДж", fats: "0,1 г", squirrels: "1,3 г", carbohydrates: "3,3 г"), reviews: [Review(userName: "Александр В.", date: .now, rating: 4, description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими!")], price: Price(regularKgPrice: 55.9, currentKgPrice: 199.0, regularItemPrice: 199.0, currentItemPrice: 120.0))
}

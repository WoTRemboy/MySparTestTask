//
//  Labels.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import Foundation

class Texts {
    enum Content {
        static let cardPrice = "Цена по карте"
        static let description = "Описание"
        
        static let main = "Основные характеристики"
        static let production = "Производство"
        static let energy = "Энергетическая ценность, ккал/100 г"
        static let fats = "Жиры/100 г"
        static let squirrels = "Белки/100 г"
        static let carbohydrates = "Углеводы/100 г"
        static let allChars = "Все характеристики"
        
        static let reviews = "Отзывы"
        static let allReviews = "Все"
        static let publishReview = "Оставить отзыв"
        
        static let accountingType = "Accounting type"
        static let itemsCount = "Шт"
        static let kilograms = "Кг"
        static let itemsCountLow = " шт"
        static let kilogramsLow = " кг"
        static let pricePerItem = "₽/шт"
        static let pricePerKg = "₽/кг"
        static let ruble = "₽"
    }
    
    enum MockData {
        static let name = "Добавка \"Липа\" к чаю 200 г"
        static let description = "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов."
        
        static let homelandCountry = "Испания"
        static let homelandTown = "Риоха"
        static let productionCountry = "Россия"
        static let productionTown = "Краснодарский край"
        
        static let calories = "25 ккал, 105 кДж"
        static let fats = "0,1 г"
        static let squirrels = "1,3 г"
        static let carbohydrates = "3,3 г"
        
        static let userName = "Александр В."
        static let reviewDescription = "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими!"
        
        static let reviewCount = "19 отзывов"
        static let sale = "-5%"
        
        static let itemImage = "https://s.myspar.ru/upload/img/10/1007/100788801.webp?1610679940"
        static let countyImage = "https://diplomat-consulting.ru/upload/medialibrary/efb/07lft3ut1gp2xs4ztp82aj4p0qcfq5p4.jpg"
    }
    
    enum Tabs {
        static let main = "Главная"
        static let catalog = "Каталог"
        static let cart = "Корзина"
        static let profile = "Профиль"
    }
}

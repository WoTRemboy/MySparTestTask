//
//  DateFormatting.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import Foundation

extension Date {
    static func formattedDate(date: Date, format: String = "dd MMMM yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = Locale(identifier: "ru_RU")
        return dateFormatter.string(from: date)
    }
    
    static func configMockDate() -> Date {
        let calendar = Calendar.current

        var dateComponents = DateComponents()
        dateComponents.year = 2021
        dateComponents.month = 5
        dateComponents.day = 7
        
        return calendar.date(from: dateComponents) ?? .now
    }
}

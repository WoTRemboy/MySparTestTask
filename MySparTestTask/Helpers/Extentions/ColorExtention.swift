//
//  ColorExtention.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

extension Color {
    enum BackColors {
        static let backElevated = UIColor(named: "BackElevated")
        static let backiOSPrimary = UIColor(named: "BackiOSPrimary")
        static let backPrimary = UIColor(named: "BackPrimary")
        static let backSecondary = UIColor(named: "BackSecondary")
        static let backSplash = UIColor(named: "BackSplash")
        static let backDefault = UIColor(named: "BackDefault")
    }
    
    enum LabelColors {
        static let labelDisable = UIColor(named: "LabelDisable")
        static let labelPrimary = UIColor(named: "LabelPrimary")
        static let labelSecondary = UIColor(named: "LabelSecondary")
        static let labelTertiary = UIColor(named: "LabelTertiary")
    }
    
    enum SupportColors {
        static let supportNavBar = UIColor(named: "SupportNavBar")
        static let supportOverlay = UIColor(named: "SupportOverlay")
        static let supportSegmented = UIColor(named: "SupportSegmented")
        static let supportSeparator = UIColor(named: "SupportSeparator")
    }
    
    enum IconColors {
        static let cardPriceBackground = UIColor(named: "CardPriceBackground")
        static let counterBackground = UIColor(named: "CounterBackground")
        static let iconsForeground = UIColor(named: "IconsForeground")
        static let starDownplay = UIColor(named: "StarDownplay")
        static let starHighlighted = UIColor(named: "StarHighlighted")
    }
}

//
//  ViewModel.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    @Published private(set) var isLiked = false
    @Published private(set) var image = UIImage.Content.noImage
    
    @Published private(set) var itemsInCartCount = 1
    @Published private(set) var totalPrice: Float = 0
    
    public func toggleLike() {
        withAnimation {
            isLiked.toggle()
        }
    }
    
    public func plusItemToCart() {
        guard itemsInCartCount < 100 else { return }
        itemsInCartCount += 1
    }
    
    public func minusItemFromCart() {
        guard itemsInCartCount > 0 else { return }
        itemsInCartCount -= 1
    }
    
    public func countTotalPrice(type: AccountingType, pricePerUnit: Float, pricePerKg: Float) {
        switch type {
        case .kg:
            totalPrice = Float(itemsInCartCount) * pricePerKg
        case .units:
            totalPrice = Float(itemsInCartCount) * pricePerUnit
        }
    }
    
    public func cartReset(type: AccountingType, pricePerUnit: Float, pricePerKg: Float) {
        itemsInCartCount = 1
        countTotalPrice(type: type, pricePerUnit: pricePerUnit, pricePerKg: pricePerKg)
    }
    
    public func configFormat() -> String {
        if itemsInCartCount == 0 { return "%.0f" }
        return "%.1f"
    }
    
    public func loadImage(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print(error ?? "Loading image error")
                return
            }
            guard let data = data else {
                print("No image data found")
                return
            }
            DispatchQueue.main.async { [weak self] in
                guard let loadedImage = UIImage(data: data) else { return }
                self?.image = loadedImage
            }
        }
        .resume()
    }
}

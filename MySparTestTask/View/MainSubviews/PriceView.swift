//
//  PriceView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct PriceView: View {
    @State private var type: AccountingType = .units
    @StateObject private var viewModel = ViewModel()
    
    private var prices: Price
    
    init(prices: Price) {
        self.prices = prices
    }
    
    internal var body: some View {
        VStack {
            divider
            segmentedControl
            price
        }
    }
    
    private var divider: some View {
        Divider()
            .modifier(DividerSetup())
    }
    
    private var segmentedControl: some View {
        Picker(Texts.Content.accountingType, selection: $type) {
            Text(Texts.Content.itemsCount).tag(AccountingType.units)
            Text(Texts.Content.kilograms).tag(AccountingType.kg)
        }
        .pickerStyle(.segmented)
        .padding(.horizontal)
        .onChange(of: type, perform: { _ in
            viewModel.cartReset()
        })
    }
    
    // MARK: Price depends on segmented type selected
    private var price: some View {
        HStack {
            VStack {
                HStack {
                    Text(String(
                        type == .units ? prices.currentItemPrice : prices.currentKgPrice))
                        .font(.largeTitle())
                        .padding(.leading, 20)
                    
                    Text(type == .units ? Texts.Content.pricePerItem : Texts.Content.pricePerKg)
                        .padding(.leading, -3)
                        .font(.subhead())
                    
                    Spacer()
                }
                HStack {
                    Text(String(
                        type == .units ? prices.regularItemPrice : prices.regularKgPrice))
                        .modifier(OldPriceSetup())
                    Spacer()
                }
            }
            counter
                .padding(.trailing)
        }
        
    }
    
    // MARK: With elementary logical implementation
    private var counter: some View {
        HStack {
            // "Minus" Button
            Button(action: {
                viewModel.minusItemFromCart()
                viewModel.countTotalPrice(type: type, pricePerUnit: prices.currentItemPrice, pricePerKg: prices.currentKgPrice)
            }, label: {
                Image.Icons.minus
                    .foregroundStyle(Color.LabelColors.labelWhite)
            })
            .padding(.horizontal, 15)
            
            // "Count" and "total price" labels
            VStack {
                Text(String(viewModel.itemsInCartCount) + (type == .units ? Texts.Content.itemsCountLow : Texts.Content.kilogramsLow))
                    .font(.boldSubhead())
                    .foregroundStyle(Color.LabelColors.labelWhite)
                
                Text(String(format: viewModel.configFormat(), viewModel.totalPrice) + Texts.Content.ruble)
                    .modifier(TotalPriceSetup())
            }
            
            // "Plus" Button
            Button(action: {
                viewModel.plusItemToCart()
                viewModel.countTotalPrice(type: type, pricePerUnit: prices.currentItemPrice, pricePerKg: prices.currentKgPrice)
            }, label: {
                Image.Icons.plus
                    .foregroundStyle(Color.LabelColors.labelWhite)
            })
            .padding(.horizontal, 15)
        }
        .modifier(CounterBackgroundSetup())
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(prices: MockData.mockItem.price)
    }
}

//
//  PriceView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct PriceView: View {
    @State var type = 0
    @State var count = 0
    
    var prices: Price
    
    var body: some View {
        VStack {
            Divider()
                .background(Color.LabelColors.labelWhite)
                .shadow(color: Color.black, radius: 4, x: 0, y: -2)
                .padding(.top)
            segmentedControl
            price
        }
    }
    
    var segmentedControl: some View {
        Picker("Accounting type", selection: $type) {
            Text("Шт").tag(0)
            Text("Кг").tag(1)
        }
        .pickerStyle(.segmented)
        .padding(.horizontal)
    }
    
    var price: some View {
        HStack {
            VStack {
                HStack {
                    Text(String(
                        type == 0 ? prices.currentItemPrice : prices.currentKgPrice))
                    
                        .padding(.leading, 20)
                        .font(.largeTitle())
                    Text("₽/кг")
                        .padding(.leading, -3)
                        .font(.subhead())
                    Spacer()
                }
                HStack {
                    Text(String(
                        type == 0 ? prices.regularItemPrice : prices.regularKgPrice))
                    
                        .padding(.leading, 20)
                        .font(.subhead())
                        .strikethrough()
                        .foregroundStyle(Color.LabelColors.labelTertiary)
                    Spacer()
                }
            }
            counter
                .padding(.trailing)
        }
        
    }
    
    var counter: some View {
        HStack {
            Button(action: {
                guard count > 0 else { return }
                count -= 1
            }, label: {
                Image.Icons.minus
                    .foregroundStyle(Color.LabelColors.labelWhite)
            })
            .padding(.horizontal, 15)
            
            VStack {
                Text(String(count) + (type == 0 ? " шт" : " кг"))
                    .font(.boldSubhead())
                    .foregroundStyle(Color.LabelColors.labelWhite)
                Text(String(
                    format: count == 0 ? "%.0f" : "%.1f", type == 0 ? (prices.currentItemPrice * Float(count)) : (prices.currentKgPrice * Float(count))) + "₽")
                
                    .font(.cart())
                    .foregroundStyle(Color.LabelColors.labelWhite)
                    .frame(width: 50)
            }
            
            Button(action: {
                guard count < 100 else { return }
                count += 1
            }, label: {
                Image.Icons.plus
                    .foregroundStyle(Color.LabelColors.labelWhite)
            })
            .padding(.horizontal, 15)
        }
        .padding(.vertical, 5)
        .background(Color.IconColors.counterBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    PriceView(prices: MockData.item.price)
}

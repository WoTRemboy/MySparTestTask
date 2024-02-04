//
//  CartView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct CartView: View {
    internal var body: some View {
        Text(Texts.Tabs.cart)
            .tabItem {
                Image.Icons.cart
//                    .environment(\.symbolVariants, .none)
                Text(Texts.Tabs.cart)
            }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

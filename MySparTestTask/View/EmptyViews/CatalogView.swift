//
//  CatalogView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct CatalogView: View {
    internal var body: some View {
        Text(Texts.Tabs.catalog)
            .tabItem {
                Image.Icons.catalog
                    .environment(\.symbolVariants, .none)
                Text(Texts.Tabs.catalog)
            }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}

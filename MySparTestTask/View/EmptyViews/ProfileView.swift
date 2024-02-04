//
//  ProfileView.swift
//  MySparTestTask
//
//  Created by Roman Tverdokhleb on 31.01.2024.
//

import SwiftUI

struct ProfileView: View {
    internal var body: some View {
        Text(Texts.Tabs.profile)
            .tabItem {
                Image.Icons.profile
//                    .environment(\.symbolVariants, .none)
                Text(Texts.Tabs.profile)
            }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

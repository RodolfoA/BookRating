//
//  MenuView.swift
//  BookRating
//
//  Created by Rodolfo Antoniazzi on 13/05/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        TabView() {
            HomeView().tabItem {
                Image(systemName: "house")
            }.tag(1)
            AddView().tabItem {
                Image(systemName: "plus.circle")
            }.tag(1)
            ProfileView().tabItem {
                Image(systemName: "person")
            }.tag(1)
        }
        .accentColor(.accent)
    }
}

#Preview {
    MenuView()
}

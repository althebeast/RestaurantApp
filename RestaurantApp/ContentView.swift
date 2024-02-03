//
//  ContentView.swift
//  RestaurantApp
//
//  Created by Alperen Sarışan on 2.02.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "menucard")
                }
            
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }
            
            GalleryView()
                .tabItem {
                    Label("Gallery", systemImage: "photo")
                }
        }
        .onAppear {
            UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
        }
    }
}

#Preview {
    MainView()
}

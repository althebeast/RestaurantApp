//
//  ContentView.swift
//  RestaurantApp
//
//  Created by Alperen Sarışan on 6.12.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView{
            
            MenuView()
                .tabItem {
                    Label("Home", systemImage: "menucard")
                }
            
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }
            
            GalleryView()
                .tabItem {
                    Label("Gallery", systemImage: "photo.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

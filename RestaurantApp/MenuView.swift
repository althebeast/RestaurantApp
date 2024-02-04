//
//  MenuView.swift
//  RestaurantApp
//
//  Created by Alperen Sarışan on 2.02.2024.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        List(menuItems) { item in
            MenuListRow(item: item)
        }
        .listStyle(.plain)
        .onAppear {
            menuItems = dataService.getData()
        }
    }
}

#Preview {
    MenuView()
}

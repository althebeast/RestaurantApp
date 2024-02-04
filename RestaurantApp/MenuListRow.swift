//
//  MenuListRow.swift
//  RestaurantApp
//
//  Created by Alperen Sarışan on 3.02.2024.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 50)
                .cornerRadius(7)
            
            Text(item.name)
                .font(.headline)
                .fontWeight(.semibold)
            
            Spacer()
            
            Text("$\(item.price)")
                .font(.subheadline)
                .fontWeight(.semibold)
        }
        
        .padding(.horizontal, 10)
        .listStyle(.plain)
        .listRowBackground(Color(.brown).opacity(0.3).ignoresSafeArea(edges: .top))
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Sushi", price: "7.55", imageName: "meguro-sushi"))
}

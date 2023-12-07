//
//  MenuListRow.swift
//  MenuApp
//
//  Created by Alperen Sarışan on 2.12.2023.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 60)
                .cornerRadius(15)
            Text(item.name)
                .font(.subheadline)
                .bold()
            Spacer()
            Text("$" + item.price)
                .font(.subheadline)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.orange)
                .opacity(0.2)
                .ignoresSafeArea()
        )
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item: MenuItem(name: "origimi", price: "2.99", imageName: "onigiri"))
    }
}

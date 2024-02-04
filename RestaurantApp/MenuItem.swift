//
//  MenuItem.swift
//  RestaurantApp
//
//  Created by Alperen Sarışan on 3.02.2024.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id = UUID()
    var name: String
    var price: String
    var imageName: String
}

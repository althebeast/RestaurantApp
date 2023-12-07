//
//  MenuItem.swift
//  MenuApp
//
//  Created by Alperen Sarışan on 2.12.2023.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}

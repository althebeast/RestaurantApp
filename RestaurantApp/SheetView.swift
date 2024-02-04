//
//  SheetView.swift
//  RestaurantApp
//
//  Created by Alperen Sarışan on 3.02.2024.
//

import SwiftUI

struct SheetView: View {
    
    @Binding var sheetVisible: Bool
    @Binding var selectedPhoto: String
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                
                Button(action: {
                    sheetVisible = false
                }, label: {
                    Image(systemName: "x.circle")
                        .font(.title2)
            })
                .padding(.horizontal)
            }
            
            Image(selectedPhoto)
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    SheetView(sheetVisible: .constant(false), selectedPhoto: .constant("gallery1"))
}

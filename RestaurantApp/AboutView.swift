//
//  AboutView.swift
//  RestaurantApp
//
//  Created by Alperen Sarışan on 2.02.2024.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("About")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Image(.restaurantInside)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding(.bottom)
                
                Text("Sukiyabashi Jiro (すきやばし次郎, Sukiyabashi Jirō) is a sushi restaurant in Ginza, Chūō, Tokyo, Japan. It is owned and operated by sushi master Jiro Ono. It was the first sushi restaurant in the world to receive three stars from the Michelin Guide, although it was removed from the Michelin Guide in November 2019 as it does not receive reservations from the general public, instead requiring reservations to be made through the concierge of a luxury hotel.")
                    .font(.title3)
                    .padding(.bottom)
                
                Image(.map)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding(.bottom)
                
                Text("""
                        Tsukamoto Sogyo Building
                        Basement Floor 1
                        """)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    AboutView()
}

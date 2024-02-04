//
//  GalleryView.swift
//  RestaurantApp
//
//  Created by Alperen Sarışan on 2.02.2024.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photos = [String]()
    @State var sheetVisible = false
    @State var selectedPhoto = ""
    
    var dataService = DataService()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            GeometryReader { geo in
                ScrollView(showsIndicators: false) {
                    LazyVGrid (columns: [GridItem(), GridItem(), GridItem()]) {
                        ForEach(photos, id: \.self) { p in
                            Image(p)
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: geo.size.width/3)
                                .clipped()
                                .onTapGesture {
                                    selectedPhoto = p
                                    sheetVisible = true
                                }
                                .sheet(isPresented: $sheetVisible) {
                                    SheetView(sheetVisible: $sheetVisible, selectedPhoto: $selectedPhoto)
                                }
                        }
                    }
                    .onAppear() {
                        photos = dataService.getPhotos()
                    }
                }
            }
        }
    }
}

#Preview {
    GalleryView()
}

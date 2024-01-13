//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 13.01.2024.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })// LazyHGrid
            .frame(height: 200)
            .padding(15)
        }// ScrollView
    }
}

#Preview {
    BrandGridView()
        .background(colorBackground)
}

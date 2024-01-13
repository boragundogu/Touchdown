//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 13.01.2024.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - Properties
    let brand: Brand
    
    //MARK: - Body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
    }
}

#Preview {
    BrandItemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}

//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 13.01.2024.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - Property
    let product: Product
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//Zstack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }//VStack
    }
}
    #Preview {
        ProductItemView(product: products[0])
            .padding()
            .background(colorBackground)
    }

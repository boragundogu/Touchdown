//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 12.01.2024.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - Property
    let category: Category
    
    //MARK: - Body
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            }// HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
        })//Button
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .padding()
        .background(colorBackground)
}

//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 12.01.2024.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTY
    let player: Player
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

//MARK: - PREVIEW
#Preview {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}

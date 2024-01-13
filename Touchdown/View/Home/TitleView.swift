//
//  TitleView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 13.01.2024.
//

import SwiftUI

struct TitleView: View {
    //MARK: - Properties
    
    var title: String
    
    //MARK: - Body
    var body: some View {
        
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }//HStack
        .padding(.horizontal)
        .padding(.horizontal, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
        .background(colorBackground)
}

//
//  SectionView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 12.01.2024.
//

import SwiftUI

struct SectionView: View {
    //MARK: - Property
    
    @State var rotateClockwise: Bool
    
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
            
        }//VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: false)
        .padding()
        .background(colorBackground)
}

//
//  FooterView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 12.01.2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweigth and durable football hemlets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template) // foregroundStyle ile değişiklik yapabilmemiz için.
                .foregroundStyle(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Bora Gundogu\n All right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1) // görünüm önceliği taşımakta -> alana sığmazlarsa bu gözükecek.
        } //MARK: Vstack
        .padding()
    }
}

#Preview {
    FooterView()
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}

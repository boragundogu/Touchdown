//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 12.01.2024.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            }) // Search Button
            
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) { // animasyon türü easeOut -> hızlı başlar sonu yavaş
                        isAnimated.toggle()
                    }
                })
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundStyle(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }) //Cart Button
        } //HStack
    }
}

//MARK: - PREVIEW
#Preview {
    NavigationBarView()
        .previewLayout(.sizeThatFits)
        .padding()
}

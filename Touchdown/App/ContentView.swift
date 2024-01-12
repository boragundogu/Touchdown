//
//  ContentView.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 12.01.2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(minHeight: 256) // minimum height gerekli
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }//VStack
                } //Scroll
            }//VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}
//MARK: - PREVIEW

#Preview {
    ContentView()
}

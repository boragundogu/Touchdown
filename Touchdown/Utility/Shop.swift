//
//  Shop.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 13.01.2024.
//

import Foundation


class Shop: ObservableObject {
    
    @Published var showingProdcut: Bool = false
    @Published var selectedProdcut: Product? = nil
    
}

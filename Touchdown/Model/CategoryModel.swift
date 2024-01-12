//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Bora Gündoğu on 12.01.2024.
//

import Foundation

struct Category: Codable, Identifiable {
    
    let id: Int
    let name: String
    let image: String
}

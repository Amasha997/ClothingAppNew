//
//  Product.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-23.
//

import Foundation

struct Product: Decodable, Identifiable{
    let id: Int
    let name: String
    let category: String
    let imageURL: String
    let description: String
    let size: String
    let price: Double
    let color: String
}

struct ProductResponse: Decodable {
    let request: [Product]
}

struct MockData{
    static let sampleProduct = Product(id:1,
                                       name: "test",
                                       category: "test",
                                       imageURL: "test",
                                       description: "test",
                                       size: "test",
                                       price: 30.45,
                                       color: "test")
    
    static let products = [sampleProduct,sampleProduct,sampleProduct,sampleProduct]    
}

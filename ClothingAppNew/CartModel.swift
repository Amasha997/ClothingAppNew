//
//  CartModel.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-26.
//

//import Foundation
import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Product] = []{
        didSet {
            saveOrder()
        }
    }
    
    // UserDefaults key for storing favItems
         let orderKey = "ordersKey"
         
         init() {
             // Retrieve favorites from UserDefaults on initialization
             if let savedFavorites = UserDefaults.standard.array(forKey: orderKey) as? [[String: Any]] {
                 items = decodeProducts(from: savedFavorites)
             }
         }
       
       // Function to save favorites to UserDefaults
          func saveOrder() {
              let encodedData = encodeProducts()
              UserDefaults.standard.set(encodedData, forKey: orderKey)
          }
       
       func retrieveOrder() {
              if let savedFavorites = UserDefaults.standard.array(forKey: orderKey) as? [[String: Any]] {
                  items = decodeProducts(from: savedFavorites)
              }
          }
          
          // Function to encode Products
          private func encodeProducts() -> [[String: Any]] {
              return items.map { $0.toDictionary() }
          }
       
       // Function to decode Products
           private func decodeProducts(from data: [[String: Any]]) -> [Product] {
               return data.compactMap { dict in
                   guard let id = dict["id"] as? Int,
                         let name = dict["name"] as? String,
                         let category = dict["category"] as? String,
                         let imageURL = dict["imageURL"] as? String,
                         let description = dict["description"] as? String,
                         let size = dict["description"] as? String,
                         let price = dict["price"] as? Double,
                         let color = dict["color"] as? String
                   else {
                       return MockData.sampleProduct
                   }
                   return Product(id: id, name: name, category: category, imageURL: imageURL, description: description, size: size, price: price, color: color)
               }
           }
    
    
    var totalPrice: Double {
        items.reduce(0) {$0 + $1.price}
    }
    
    func add(_ product: Product){
        items.append(product)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
        saveOrder()
    }
}

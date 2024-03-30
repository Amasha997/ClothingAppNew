//
//  FavoriteModel.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-27.
//

//

import SwiftUI

final class Favorite: ObservableObject {
    @Published var favoriteItems: [Product] = []{
        didSet {
            saveFavorites()
        }
    }
    
    // UserDefaults key for storing favItems
         let favoritesKey = "favoritesKey"
         
         init() {
             // Retrieve favorites from UserDefaults on initialization
             if let savedFavorites = UserDefaults.standard.array(forKey: favoritesKey) as? [[String: Any]] {
                 favoriteItems = decodeProducts(from: savedFavorites)
             }
         }
       
       // Function to save favorites to UserDefaults
          func saveFavorites() {
              let encodedData = encodeProducts()
              UserDefaults.standard.set(encodedData, forKey: favoritesKey)
          }
       
       func retrieveFavorites() {
              if let savedFavorites = UserDefaults.standard.array(forKey: favoritesKey) as? [[String: Any]] {
                  favoriteItems = decodeProducts(from: savedFavorites)
              }
          }
          
          // Function to encode Products
          private func encodeProducts() -> [[String: Any]] {
              return favoriteItems.map { $0.toDictionary() }
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
        favoriteItems.reduce(0) {$0 + $1.price}
    }
    
    func add(_ product: Product){
        favoriteItems.append(product)
    }
    
    func deleteItems(at offsets: IndexSet) {
        favoriteItems.remove(atOffsets: offsets)
        saveFavorites()
    }
}

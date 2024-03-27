//
//  FavoriteModel.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-27.
//

//

import SwiftUI

final class Favorite: ObservableObject {
    @Published var favoriteItems: [Product] = []
    
    var totalPrice: Double {
        favoriteItems.reduce(0) {$0 + $1.price}
    }
    
    func add(_ product: Product){
        favoriteItems.append(product)
    }
    
    func deleteItems(at offsets: IndexSet) {
        favoriteItems.remove(atOffsets: offsets)
    }
}

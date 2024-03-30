//
//  FavoriteView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-19.
//

import SwiftUI

struct FavoriteView: View {
    
    @EnvironmentObject var favorite: Favorite
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    NavigationStack {
                        List{
                            ForEach(favorite.favoriteItems.lazy){product in
                                ProductRawCell(product: product)
                                
                            }
                            .onDelete{indexSet in
                                favorite.favoriteItems.remove(atOffsets: indexSet)
                            }
                        }
                        .toolbar {
                            EditButton()
                        }
                    }
                    
                    .listStyle(PlainListStyle())
                    //                    .listRowSeparator(.hidden)
                    
                    
                    
                    
                    .navigationTitle("Favorite")
                }
                
                if favorite.favoriteItems.isEmpty {
                    FavoriteEmptyStateView(imageName: "empty wish", lable: "Your Wishlist is empty")
                }
                
                    
            }
        }
        .onAppear{
            favorite.retrieveFavorites()
        }
    }
}

#Preview {
    FavoriteView()
}

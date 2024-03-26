//
//  CartView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-19.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){product in
                            ProductRawCell(product: product)
                            
                        }
                        //.onDelete(perform: order.deleteItems)
                                    
                    }
                    .listStyle(PlainListStyle())
//                    .listRowSeparator(.hidden)
                    
                
                    Button{
                        
                    } label: {
                        Text("Confirm order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyStateView(imageName: "PlaceHolder", lable: "You have no items in your cart")
                }
            }
            
            .navigationTitle("Cart")
        }
    }
}

#Preview {
    CartView()
}

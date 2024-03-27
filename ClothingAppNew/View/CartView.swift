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
                    
                
                    VStack{
                        
                        Text("Price Info")
                            .fontWeight(.medium)
                            
                        
                        HStack{
                            Text("Subtotal")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.gray)
                                .fontWeight(.light)
                                .padding(.vertical, 8)
                            
                            Spacer()
                            
                            Text("Rs \(order.totalPrice, specifier: "%.2f")")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.gray)
                                .fontWeight(.light)
                                .padding(.vertical, 8)
                            
                        }
                        HStack{
                            Text("Delivery Charge")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.gray)
                                .fontWeight(.light)
                                .padding(.vertical, 8)
                            
                            Spacer()
                            
                            Text("-")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.gray)
                                .fontWeight(.light)
                                .padding(.vertical, 8)
                            
                        }
                        HStack{
                            Text("Total")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.gray)
                                .fontWeight(.light)
                                .padding(.vertical, 8)
                            
                            Spacer()
                            
                            Text("Rs \(order.totalPrice, specifier: "%.2f")")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.gray)
                                .fontWeight(.light)
                                .padding(.vertical, 8)
                            
                        }
                        
                    }
                    
                    .padding(.horizontal, 20)
//                    .padding(.vertical, 10)

//                    Button{
//                        
//                    } label: {
//                        Text("Confirm order")
//                    }
                    Button(action: {
                        
                    }, label: {
                        Text("Checkout")
                            .padding()
                            .padding(.horizontal)
                            .frame(width: 350, height: 60)
                            .background(Color("primary color"))
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                        })
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyStateView(imageName: "empty cart", lable: "Your cart is empty")
                }
            }
            
            .navigationTitle("Cart")
        }
    }
}

#Preview {
    CartView()
}

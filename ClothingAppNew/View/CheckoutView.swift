//
//  CheckoutView.swift
//  ClothingAppNew
//
//  Created by NIBM-LAB04-PC07 on 2024-03-28.
//

import SwiftUI

struct CheckoutView: View {
    
//    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ScrollView {
//                List{
//                    ForEach(order.items){product in
//                        ProductRawCell(product: product)
//                        
//                    }
//                    .onDelete{indexSet in
//                        order.items.remove(atOffsets: indexSet)
//                    }
//                }
//                .toolbar {
//                    EditButton()
//                }
                
                VStack{
                    HStack {
                        Text("Payment Method")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.black)
                            .fontWeight(.medium)
                        
                        Spacer()
                    }
                    
                    HStack (spacing: 16){
                       Image("card 1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                            .frame(width: 40, height: 40)
                            .background(Color("search color"))
                            .cornerRadius(20)
                        
                        Text("Master Card")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.black)
                            .opacity(0.3)
                            .fontWeight(.light)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Image(systemName: "checkmark.circle")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 18, height: 18)
                             .foregroundColor(.black)
                             .opacity(0.3)
                        
                    }
                    
                    HStack (spacing: 16){
                       Image("card 2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                            .frame(width: 40, height: 40)
                            .background(Color("search color"))
                            .cornerRadius(20)
                        
                        Text("Visa Card")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.black)
                            .opacity(0.3)
                            .fontWeight(.light)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Image(systemName: "checkmark.circle")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 18, height: 18)
                             .foregroundColor(.black)
                             .opacity(0.3)
                        
                    }
                    
                    HStack (spacing: 16){
                       Image("card 3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                            .frame(width: 40, height: 40)
                            .background(Color("search color"))
                            .cornerRadius(20)
                        
                        Text("PayPal")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.black)
                            .opacity(0.3)
                            .fontWeight(.light)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Image(systemName: "checkmark.circle")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 18, height: 18)
                             .foregroundColor(.black)
                             .opacity(0.3)
                        
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    HStack(spacing: -8) {
                        Text("Shipping Information ")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.black)
                            .fontWeight(.medium)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Image(systemName: "square.and.pencil")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 20, height: 20)
                             .foregroundColor(.black)
                             .opacity(0.3)
                        
                        
                    }
                }
                .padding(.horizontal, 20)
            }
        }        
    }
        
}

#Preview {
    CheckoutView()
}

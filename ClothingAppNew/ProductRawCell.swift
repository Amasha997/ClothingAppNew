//
//  ProductRawCell.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-26.
//

import SwiftUI

struct ProductRawCell: View {
    
    let product :Product
    @EnvironmentObject var order: Order
    
    var body: some View {
        
//        HStack{
//           
//            ProductRemoteImage(urlString: product.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90, alignment: .center)
//                .cornerRadius(8)
//            
//            VStack(alignment: .leading, spacing: 5){
//                Text(product.name)
//                    .font(.system(size: 15))
//                    .fontWeight(.medium)
//                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                Text("Rs \(product.price,specifier: "%.2f")")
//                    .foregroundStyle(.secondary)
//                    .fontWeight(.semibold)
//                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//            }
//            .padding(.leading)
//            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//        
//        }
        
        HStack{
           
            ProductRemoteImage(urlString: product.imageURL)
//                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 110)
                .cornerRadius(5)
                .scaledToFit()
            
                Spacer()
            
            VStack {
                
                Text(product.name)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.black)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
                Text(product.category)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.gray)
                    .opacity(0.5)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Spacer()
                
                Text("Rs \(product.price,specifier: "%.2f")")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.black)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
            }
            Spacer()
            
            Button(action: {
//                order.deleteItems(at: product.id)
            }, label: {
                Image(systemName: "trash")
                    .foregroundColor(.red)
            })
            
//                .onTapGesture {
//                    order.deleteItems(at: product.id)
//                }
            
            
        
        }
        .padding(15)
        
            .frame(width: 360, height: 120)
//            .overlay(
//                RoundedRectangle(cornerRadius: 8)
//                    .stroke(Color.gray, lineWidth: 1)
//            )
            .background(.white)
            .cornerRadius(5)
            .offset(x: 0, y: 0)
            .shadow(color: Color(red: 0.27, green: 0.27, blue: 0.27, opacity: 0.10), radius: 5)
        
            .padding(.leading)
    }
}

#Preview {
    ProductRawCell(product: MockData.sampleProduct)
}

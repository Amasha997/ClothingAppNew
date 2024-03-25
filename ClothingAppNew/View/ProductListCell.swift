//
//  ProductListCell.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-23.
//


import SwiftUI

struct ProductListCell: View {
    
    let product: Product
    
    var body: some View {
        VStack{
           
            ProductRemoteImage(urlString: product.imageURL)
//                .aspectRatio(contentMode: .fit)
                .frame(width: 131, height: 128)
                .cornerRadius(8)
                .scaledToFit()
            
                Spacer()
            
                Text(product.name)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.black)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Text(product.category)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.gray)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)

                
            
            HStack {
                Text("$\(product.price,specifier: "%.2f")")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.black)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .accentColor(.white)
                }
                .frame(width: 40, height: 40)
                .background(Color(.primary))
                .cornerRadius(20)
            }
            
        
        }
        .padding(15)
        
            .frame(width: 163, height: 242)
//            .overlay(
//                RoundedRectangle(cornerRadius: 8)
//                    .stroke(Color.gray, lineWidth: 1)
//            )
            .background(.white)
            .cornerRadius(10)
            .offset(x: 0, y: 0)
            .shadow(color: Color(red: 0.27, green: 0.27, blue: 0.27, opacity: 0.10), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ProductListCell(product: MockData.sampleProduct)
}

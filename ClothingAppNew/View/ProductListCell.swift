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
                .frame(width: 150, height: 120)
//                .cornerRadius(8)
                .scaledToFit()
            
                Spacer()
            
                Text(product.name)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.black)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
                Text("$\(product.price,specifier: "%.2f")")
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
                .background(Color.black)
                .cornerRadius(20)
            }
            
//            VStack(alignment: .leading, spacing: 5){
//                Text(product.name)
//                    .font(.system(size: 15))
//                    .fontWeight(.medium)
//                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                Text("$\(product.price,specifier: "%.2f")")
//                    .foregroundStyle(.secondary)
//                    .fontWeight(.semibold)
//                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//            }
//            .padding(.leading)
//            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
        }
        .padding(15)
        
            .frame(width: 170, height: 250)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}

#Preview {
    ProductListCell(product: MockData.sampleProduct)
}

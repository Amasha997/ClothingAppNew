//
//  CartButton.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-26.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts:Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart").imageScale(.large)
                .foregroundColor(Color("primary color").opacity(0.8))
                .padding(.top,5)
                .frame(width: 40, height: 40)
                .background(Color("primary color").opacity(0.1))
                .cornerRadius(50)
            
            
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(Color("primary color"))
                    .cornerRadius(50)
            }
        }
    }
}
#Preview {
    CartButton(numberOfProducts: 1)
}

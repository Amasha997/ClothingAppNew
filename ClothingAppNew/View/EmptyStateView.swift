//
//  EmptyStateView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-26.
//

import SwiftUI

struct EmptyStateView: View {
    
    var imageName : String
    var lable : String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 190)
                
                Text(lable)
                    
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundStyle(.black)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                Text("Looks like you haven't made \nyour choice yet...")
                    
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.gray)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
            }
        }
    }
}

#Preview {
    EmptyStateView(imageName: "empty cart", lable: "Your cart is empty")
}

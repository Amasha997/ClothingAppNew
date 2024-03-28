//
//  FavoriteEmptyStateView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-27.
//

import SwiftUI

import SwiftUI

struct FavoriteEmptyStateView: View {
    
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
                
                
                Text("Explore more and shortlist some items...")
                    
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.gray)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
            }
        }
    }
}

#Preview {
    FavoriteEmptyStateView(imageName: "empty wish", lable: "Your Wishlist is empty")
}

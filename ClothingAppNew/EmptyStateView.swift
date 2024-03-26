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
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                
            }
        }
    }
}

#Preview {
    EmptyStateView(imageName: "PlaceHolder", lable: "You don't have any items in the cart")
}

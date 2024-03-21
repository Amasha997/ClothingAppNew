//
//  HomeView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-19.
//

import SwiftUI

struct HomeView: View {
    
//    @State var title: String = "Title"
//    @State var titleAll: String = "View All"
//    @State var placeholder: String = "placeholder"
//    @Binding var txt: String
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    HStack {
                        Image("location icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                        
                        Text("Dhaka, banassre")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.black)
                    }
                    
                    // search bar
                }
                .padding(.top)
                
                // advertistments
                
                
                HStack {
                    Text("Exclusive Offer")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    Text("View All")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(.black)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                
                HStack {
                    Text("New Arrival")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    Text("View All")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(.black)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                
                HStack {
                    Text("Best Selling")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    Text("View All")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(.black)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
            }
        }
    }
}

#Preview {
    HomeView()
}

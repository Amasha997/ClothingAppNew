//
//  NavBarView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-19.
//

import SwiftUI

struct NavBarView: View {
    
    @EnvironmentObject var order : Order
    
    @State var selectedTab: Int = 0
    @State var selectedCategory: String = ""
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedCategory: $selectedCategory, selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            ExploreView(selectedProduct: MockData.sampleProduct, selectedCategory: $selectedCategory)
                .tabItem {
                    Image(systemName: "safari.fill")
                    Text("Explore")
                }
                .tag(1)
            
            FavoriteView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }
                .tag(2)
            
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("My Cart")
                }
                .tag(3)
                .badge(order.items.count)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
                .tag(4)
        }
        .accentColor(Color("primary color"))
        
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    NavBarView()
}

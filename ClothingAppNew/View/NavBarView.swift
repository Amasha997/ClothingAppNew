//
//  NavBarView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-19.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
        TabView() {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "doc.text")
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
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
                .tag(4)
        }
        .accentColor(.black)
        
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    NavBarView()
}

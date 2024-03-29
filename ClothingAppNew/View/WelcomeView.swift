//
//  WelcomeView.swift
//  ClothingAppNew
//
//  Created by NIBM-LAB04-PC07 on 2024-03-19.
//

import SwiftUI

struct WelcomeView: View {
    
//    var order = Order()
    
    var body: some View {
        ZStack {
            Image("Image1")
                .resizable()
                .scaledToFill()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                Text("Welcome\nto our store")
                    .font(.system(size: 48, weight: .semibold))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                
                Text("Get your groceries in as fast one hour")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                

                
                NavigationLink {
//                    NavBarView().environmentObject(order)
                } label: {
                    Button {
                        
                    } label: {
                        Text("Get Startered")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.black)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color.white)
                    .cornerRadius(5)
                }
                
                Spacer()
                    .frame(height: 60)
            }
            .padding(.horizontal , 20)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationView {
        WelcomeView()
    }
}

//
//  SignInView.swift
//  ClothingAppNew
//
//  Created by NIBM-LAB04-PC07 on 2024-03-19.
//

import SwiftUI

struct SignInView: View {
    
    @State private var emailID: String = ""
    @State private var password: String = ""
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15, content: {
            
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text("Please sign in to continue")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                .padding(.top, -5)
            
            VStack(spacing: 25) {
                
            }
            .padding(.top, 20)
            
//            Spacer(minLength: 3)
            
            NavigationLink {
                
                NavBarView()
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
//                Button {
//
//                } label: {
//                    Text("Get Startered")
//                        .font(.system(size: 18, weight: .semibold))
//                        .foregroundStyle(.black)
//                        .multilineTextAlignment(.center)
//                }
//                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
//                .background(Color.white)
//                .cornerRadius(5)
            
            Spacer()
                .frame(height: 60)
        })
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        
    }
}

#Preview {
    NavigationView {
        SignInView()
    }
}

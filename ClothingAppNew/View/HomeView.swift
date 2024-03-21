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
    
    var didAddCart: ( ()->() )?
    
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
                
                // Exclusive offer products
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: -8) {
                        ForEach (0...5, id:\.self) {
                            index in
                            
                            VStack {
                                Image("Jacket")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 130, height: 130)
                                
                                Spacer()
                                
                                Text("Modern Light Clothes")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                Text("1pcs, price")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundStyle(.gray)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                
                                HStack {
                                    Text("$127.90")
                                        .font(.system(size: 16, weight: .bold))
                                        .foregroundStyle(.black)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    
                                    Spacer()
                                    
                                    Button {
                                        didAddCart?()
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
                                
                            }
                            .padding(15)
                            .frame(width: 200, height: 280)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 4)
                    }
                }
                
                // New Arrival Product
                
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
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: -8) {
                        ForEach (0...5, id:\.self) {
                            index in
                            
                            VStack {
                                Image("Jacket")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 130, height: 130)
                                
                                Spacer()
                                
                                Text("Modern Light Clothes")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                Text("1pcs, price")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundStyle(.gray)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                
                                HStack {
                                    Text("$127.90")
                                        .font(.system(size: 16, weight: .bold))
                                        .foregroundStyle(.black)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    
                                    Spacer()
                                    
                                    Button {
                                        didAddCart?()
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
                                
                            }
                            .padding(15)
                            .frame(width: 200, height: 280)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 4)
                    }
                }
                
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
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: -8) {
                        ForEach (0...5, id:\.self) {
                            index in
                            
                            VStack {
                                Image("Jacket")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 130, height: 130)
                                
                                Spacer()
                                
                                Text("Modern Light Clothes")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                Text("1pcs, price")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundStyle(.gray)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                
                                HStack {
                                    Text("$127.90")
                                        .font(.system(size: 16, weight: .bold))
                                        .foregroundStyle(.black)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    
                                    Spacer()
                                    
                                    Button {
                                        didAddCart?()
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
                                
                            }
                            .padding(15)
                            .frame(width: 200, height: 280)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                            )
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 4)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

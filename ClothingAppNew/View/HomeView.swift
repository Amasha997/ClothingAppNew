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
    @State private var search: String = ""
    @State private var currentIndex = 0
    var slides: [String] = ["banner 2","banner 3","banner 1", "banner 3"]
    
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
                    .ignoresSafeArea()
                    
                    // search bar
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .padding(.leading)
                            
                            TextField("Search For Clothes",text: $search)
                                .padding()
                        }
                        .background(Color("search color"))
                        .cornerRadius(6)
                        
                        Image(systemName: "camera")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(6)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    
                }
                .padding(.top)
                
                // advertistments
                ZStack(alignment: .bottomLeading) {
                    ZStack(alignment: .trailing) {
                        Image("Banner")
                            .resizable()
                            .frame(width: .infinity, height: 180)
                            .scaledToFit()
                    }
//                    HStack {
//                        ForEach(0..<slides.count) {index in
//                                Circle()
//                                .fill(self.currentIndex == index ? Color("gray") : Color("black"))
//                                .frame(width: 10, height: <#T##CGFloat?#>)
//                        }
//                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                }
                
                // Category Section
                HStack {
                    Text("Category")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundStyle(.black)
                    
                    Spacer()
                    
                    Text("View All")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: -24) {
                        ForEach (0...5, id:\.self) {
                            index in
                            
                            HStack {
                                Image("Jacket")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                
//                                Spacer()
//                                
//                                Text("Jackets")
//                                    .font(.system(size: 16, weight: .semibold))
//                                    .foregroundStyle(.black)
//                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                
                            }
                            .padding(10)
                            .frame(width: 60, height: 60)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .foregroundColor(Color("Color 1").opacity(0.2))
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
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: -8) {
                        ForEach (0...5, id:\.self) {
                            index in
                            
                            VStack {
//                                HStack(alignment: .top) {
//                                    Image("Jacket")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 130, height: 130)
//                                    
//                                    Spacer()
//                                    
//                                    Button {
//                                        didAddCart?()
//                                    } label: {
//                                        Image(systemName: "heart.fill")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 18, height: 18)
//                                            .accentColor(.white)
//                                    }
//                                    .frame(width: 40, height: 40)
//                                    .background(Color.pink)
//                                    .cornerRadius(20)
//                                    
//                                    
//                                }
                                Image("Jacket")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 130, height: 130)
                                
                                Spacer()
                                
//                                Button {
//                                    didAddCart?()
//                                } label: {
//                                    Image(systemName: "plus")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 15, height: 15)
//                                        .accentColor(.white)
//                                }
//                                .frame(width: 40, height: 40)
//                                .background(Color.black)
//                                .cornerRadius(20)
                                
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
                                RoundedRectangle(cornerRadius: 8)
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
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.gray)
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
                                RoundedRectangle(cornerRadius: 8)
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

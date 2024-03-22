//
//  ProductDetailsView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-22.
//

import SwiftUI

struct ProductDetailsView: View {
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    Image ("Image Preview")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
//                        .frame(width: 800, height: 600)
                    
                    DescriptionView()
                        .offset(y: -46)
                }
                
                HStack {
                    Text("$180.90")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Add to Cart")
                            .padding()
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                    })
                }
                .padding()
                .padding(.horizontal)
                .background(Color.black)
                .frame(maxHeight: .infinity, alignment: .bottom)
                
            
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

#Preview {
    ProductDetailsView()
}

struct DescriptionView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false){
            VStack(alignment: .leading) {
                Text("Modern Light Clothes")
                    .font(.system(size: 24, weight: .semibold))
                
                HStack (spacing: 4) {
                    ForEach(0..<5) { item in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    Text("(4.9)")
                        .opacity(0.5)
                        .padding(.leading, 8)
                    Spacer()
                }
                
                Text("Description")
                    .fontWeight(.medium)
                    .padding(.vertical, 8)
                
                Text("Black woven longline over coat, has a notched lapel collar, button closure, long sleeves, two pockets, and straight hem")
                    .opacity(0.6)
                
                Text("Material & Care")
                    .fontWeight(.medium)
                    .padding(.vertical, 8)

                Text("Shell: 100% Polyester \nLining: 100% Polyester \nDry Clean")
                    .opacity(0.6)
                
                Text("Specification")
                    .fontWeight(.medium)
                    .padding(.vertical, 8)
            
                        Text("Occassion : Casual")
                            .opacity(0.6)
                        Text("Fabric : Polyester")
                            .opacity(0.6)
                        Text("Collar : Notched Lapel")
                            .opacity(0.6)
                        Text("Wash Care : Dry Clean")
                            .opacity(0.6)
                
                HStack (alignment: .bottom) {
                    VStack (alignment: .leading) {
                        Text("Color")
                            .fontWeight(.medium)
                            .padding(.vertical, 8)
                        
                        HStack {
                            ColorDoView(color: .gray)
                            ColorDoView(color: .red)
                            ColorDoView(color: .yellow)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "minus")
                            .padding(.all, 8)
                    }
                    .frame(width: 30, height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 50).stroke())
                    .foregroundColor(.gray)
                    
                    Text("1")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 8)
                    
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .padding(.all, 8)
                    }
                    .background(.black)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                }
                
                Spacer()
            }
            Spacer()
            Spacer()
            Spacer()
        }
        .padding()
        .padding(.top)        
        .background(Color.white)
        .cornerRadius(40.0)
    }
}

struct ColorDoView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 24, height: 24)
            .clipShape(Circle())
    }
}

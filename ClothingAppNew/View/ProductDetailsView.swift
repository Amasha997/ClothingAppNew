////
////  ProductDetailsView.swift
////  ClothingAppNew
////
////  Created by NIBMPC04PC06 on 2024-03-22.
////

import SwiftUI

struct ProductDetailsView: View {

    
    let product: Product
    @Binding var isShowingDetails: Bool
    
    var body: some View {
        VStack{
            
        ScrollView (.vertical, showsIndicators: false){
            VStack(alignment: .leading) {
                            
                ProductRemoteImage(urlString: product.imageURL)

                    .edgesIgnoringSafeArea(.top)
                    .frame(width: 370, height: 400)
                    .cornerRadius(8)
                    .scaledToFit()
                            
                Text(product.category)
                    .opacity(0.6)
                            
                Text(product.name)
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
            
                        Text(product.description)
                            .opacity(0.6)
            
            
                        Text("Specification")
                            .fontWeight(.medium)
                            .padding(.vertical, 8)
            
                        Text("Size: \(product.size)")
                            .opacity(0.6)
                
                        Text("Color: \(product.color)")
                            .opacity(0.6)
                
                        Text("Category: \(product.category)")
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
            
            Spacer()
            
            HStack {
                Text("Rs .\(product.price, specifier: "%.2f")")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.black)
            
                Spacer()
            
                Button(action: {}, label: {
                    Text("Add to Cart")
                        .padding()
                        .padding(.horizontal)
                        .background(Color("primary color"))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    })
                }
            
            .padding(.horizontal)
            .padding(.bottom,30)
        }
        .frame(width: .infinity, height: .infinity)
        .background(Color(.white))
        

        .overlay(
            Button{
                isShowingDetails = false
            } label: {
                Image(systemName: "chevron.backward")
                    .padding(.all, 30)
                    .background(Color.white.opacity(0))
                    .frame(width: 100, height: 100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                    
            },
            alignment: .topLeading
            
        )
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

#Preview {
    ProductDetailsView(product: MockData.sampleProduct, isShowingDetails: .constant(true))
}

struct ProductCountDetails: View {
    
    let title: String
    let value:String
    
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

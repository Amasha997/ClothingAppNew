//
//  HomeView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-23.

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = ProductListViewModel()
    @State private var isList: Bool = false
    @State private var isShowingDetails: Bool = false
    @State var selectedProduct: Product?
    @State private var search: String = ""


    let columns : [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]

    
    var body: some View {
        
        ZStack{
            
            
            NavigationStack{
//Search
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
                
//Search END
        
                
                ScrollView{
                    
 //Advetise
                    BannerView()
  //Advertise END
                    
// Category
                    
                    
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
              
                    
                    
// Category ENDs
                    
//New Arrival
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
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing: 15){
                            ForEach(viewModel.products, id: \.id){product in
                                ProductListCell(product: product)
                                    .onTapGesture {
                                        viewModel.selectedProduct = product
                                        viewModel.isShowingDetails = true
                                    }
                            }
                        }
                        .frame(height: 300)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, -20)
                
//New Arrival End
                    
 // Best Selling Section
                    
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
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack(spacing: 15){
                            ForEach(viewModel.products, id: \.id){product in
                                ProductListCell(product: product)
                                    .onTapGesture {
                                        viewModel.selectedProduct = product
                                        viewModel.isShowingDetails = true
                                    }
                            }
                        }
                        .frame(height: 300)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, -20)
                    
// Best Selling END
                    
// Products
                    
                    HStack {
                        Text("Products")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundStyle(.black)
                    
                        Spacer()
                    
                        Text("View All")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.gray)
                    }
                    
                    LazyVGrid(columns:columns){
                        ForEach(viewModel.products, id: \.id){product in
                                            ProductListCell(product: product)
                                .onTapGesture {
                                    viewModel.selectedProduct = product
                                    viewModel.isShowingDetails = true
                                }
                                        }
                                    }
// Products END
                    
                }
                .disabled(viewModel.isShowingDetails)
                
                
            }
            .onAppear{
                viewModel.getProducts()
            }
            .blur(radius: viewModel.isShowingDetails ? 20 : 0)
            

        }
        .ignoresSafeArea()
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
            
            
        }
    
    
  
}

#Preview {
    HomeView(selectedProduct: MockData.sampleProduct)
}

struct BannerView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image("Banner")
                    .resizable()
                    .frame(width: .infinity, height: 180)
                    .scaledToFit()
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
        }
    }
}

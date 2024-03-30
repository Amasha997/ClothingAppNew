//
//  HomeView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-23.

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = ProductListViewModel()
    @State private var isList: Bool = false
    @State private var search: String = ""
    @Binding var selectedCategory: String
    @Binding var selectedTab: Int


    let columns : [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]

    
    var body: some View {
        
        ZStack{
            
            
            NavigationStack{
//------------------------------------------Search---------------------------------------
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
                   // .ignoresSafeArea()
                    
               
//------------------------------------------Search---------------------------------------
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
                            .background(Color("primary color"))
                            .cornerRadius(6)
                        }
                        .padding(.horizontal, 20)
                        
               
                }.padding(.top,8)
                   
                
//------------------------------------------Search End---------------------------------------
        
                
                ScrollView{
                    
//------------------------------------------Advertise View---------------------------------------
                    BannerView()
                    
//------------------------------------------Advertise View End---------------------------------------
                    
                    
//------------------------------------------Category Section---------------------------------------
                    
                    
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
                            
                            let uniqueCategories = viewModel.getUniqueCategories(from: viewModel.products)
                            ForEach (uniqueCategories.sorted(), id:\.self) {
                                category in
                   
                        HStack {
//                            Image("Shirt")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 40, height: 40)
                            
                                Button(action: {
                                    selectedCategory = category;
                                    selectedTab = 1
                                }, label: {
                                    Text(category)
                                        .font(.system(size: 15))
                                })
                            
                
                   
                        }
                        .padding(10)
                        .frame(width: 90, height: 40)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 10)
//                                .foregroundColor(Color("primary color").opacity(0.1))
//                            )
//                        .foregroundColor(Color("primary color"))
                                
                        .background(.secondary.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .foregroundStyle(Color("primary color"))
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 4)
                        }
                    }
              
//------------------------------------------Category Section End---------------------------------------
                    

                    
//------------------------------------------New Arrival ---------------------------------------
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
                        LazyHStack(spacing: 38){
                            ForEach(viewModel.products.shuffled().prefix(5), id: \.id){product in
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
                
//------------------------------------------New Arrival End---------------------------------------
                    
                    
//------------------------------------------Best Selling---------------------------------------
                    
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
                        LazyHStack(spacing: 38){
                            ForEach(viewModel.products.shuffled().prefix(5), id: \.id){product in
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
                    
//------------------------------------------Best Selling End ---------------------------------------
                    
//------------------------------------------Product list ---------------------------------------
                    
                    HStack {
                        Text("Most Popular")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundStyle(.black)
                    
                        Spacer()
                    
                        Text("View All")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    
                    LazyVGrid(columns:columns, spacing: 20){
                        ForEach(viewModel.products, id: \.id){product in
                                            ProductListCell(product: product)
                                .onTapGesture {
                                    viewModel.selectedProduct = product
                                    viewModel.isShowingDetails = true
                                }
                        }
                    }
                    
                    .padding(.vertical, 10)
                    
//------------------------------------------Product End ---------------------------------------
                    
                    
                }
                .disabled(viewModel.isShowingDetails)
                
                
            }
//            .padding(.top)
            
            .onAppear{
                viewModel.getProducts()
            }
            .blur(radius: viewModel.isShowingDetails ? 100 : 0)
            if viewModel.isShowingDetails{
                ProductDetailsView(product: viewModel.selectedProduct!, isShowingDetails: $viewModel.isShowingDetails)
            }

        }
        
        
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
//        .ignoresSafeArea()
        
      
        }
        
    
  
}

#Preview {
    HomeView(selectedCategory: .constant("sample"), selectedTab: .constant(0))
}

struct BannerView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image("Banner")
                    .resizable()
//                    .frame(width: .infinity, height: 180)
                    .scaledToFit()
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
        }
    }
}

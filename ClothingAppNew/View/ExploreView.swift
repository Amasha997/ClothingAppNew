//
//  ExploreView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-19.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel = ProductListViewModel()
    @State private var searchTerm = ""
    @State private var isList: Bool = false
    @State private var isShowingDetails: Bool = false
    @State var selectedProduct: Product?
    @Binding var selectedCategory: String
    
    var filteredCategory: [Product] {
        guard !selectedCategory.isEmpty else {return viewModel.products}
        return viewModel.products.filter{ $0.category.localizedCaseInsensitiveContains(searchTerm)}
    }
    
    var filteredProducts: [Product] {
        guard !searchTerm.isEmpty else {return filteredCategory}
        return filteredCategory.filter{ $0.name.localizedCaseInsensitiveContains(searchTerm) }
    }

    let columns : [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]

    
    var body: some View {
        
        ZStack{
            
            NavigationStack{
            
            
                ScrollView{
                    LazyVGrid(columns:columns){
                        ForEach(filteredProducts, id: \.id){product in
                                            ProductListCell(product: product)
                                .onTapGesture {
                                    viewModel.selectedProduct = product
                                    viewModel.isShowingDetails = true
                                }
                                        }
                                    }
                }
                .navigationTitle("Explore")
                .disabled(viewModel.isShowingDetails)
                
                
            }
            .searchable(text: $searchTerm, prompt: "Search product")
            
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
            
            
        }
    
    
  
}

#Preview {
    ExploreView(selectedProduct: MockData.sampleProduct, selectedCategory: .constant("sample"))
}

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
    
    var filteredProducts: [Product] {
        guard !searchTerm.isEmpty else {return viewModel.products}
        return viewModel.products.filter{ $0.name.localizedCaseInsensitiveContains(searchTerm) }
    }

    let columns : [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]

    
    var body: some View {
        
        ZStack{
            
            NavigationStack{
//                List(viewModel.products){product in
//                    ProductListCell(product: product)
//                }
//                    .navigationTitle("Explore")
                
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
//            .blur(radius: viewModel.isShowingDetails ? 20 : 0)
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
            
            
        }
    
    
  
}

#Preview {
    ExploreView(selectedProduct: MockData.sampleProduct)
}

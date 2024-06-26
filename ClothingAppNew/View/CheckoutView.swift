//
//  CheckoutView.swift
//  ClothingAppNew
//
//  Created by NIBM-LAB04-PC07 on 2024-03-28.
//

import SwiftUI

struct CheckoutView: View {
    
    @Binding var checkOut: Bool
    @EnvironmentObject var order: Order
    
    @State var orderComplete: Bool = false
    @State var showingAlert:Bool = false
    
    var body: some View {
        NavigationStack {
            
            
                        ScrollView (.vertical, showsIndicators: false){

            
            VStack{
                HStack {
                    Text("Payment Method")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.black)
                        .fontWeight(.medium)
                    
                    Spacer()
                }
                
                
                
                HStack (spacing: 16){
                    Image("card 1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .frame(width: 40, height: 40)
                        .background(Color("search color"))
                        .cornerRadius(20)
                    
                    Text("Master Card")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.black)
                        .opacity(0.3)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                        .foregroundColor(.black)
                        .opacity(0.3)
                    
                }
                
                HStack (spacing: 16){
                    Image("card 2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .frame(width: 40, height: 40)
                        .background(Color("search color"))
                        .cornerRadius(20)
                    
                    Text("Visa Card")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.black)
                        .opacity(0.3)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                        .foregroundColor(.black)
                        .opacity(0.3)
                    
                }
                
                HStack (spacing: 16){
                    Image("card 3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .frame(width: 40, height: 40)
                        .background(Color("search color"))
                        .cornerRadius(20)
                    
                    Text("PayPal")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.black)
                        .opacity(0.3)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                        .foregroundColor(.black)
                        .opacity(0.3)
                    
                }
                Spacer()
                Spacer()
                Spacer()
                
                HStack(spacing: -8) {
                    Text("Shipping Information ")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.black)
                        .fontWeight(.medium)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                        .opacity(0.3)
                    
                    
                }
                
                HStack (spacing: 16){
                   Image(systemName: "paperplane.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                        .frame(width: 40, height: 40)
                        .background(Color("search color"))
                        .cornerRadius(20)
                        .foregroundColor(.gray)
                    
                    Text("Delivery Address")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.black)
                        .opacity(0.3)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Button(action: {showingAlert = true}, label: {
                        Image(systemName: "chevron.right")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 16, height: 16)
                    })
                    
                }
                .padding(.top,10)
                
                HStack (spacing: 16){
                    Image(systemName: "phone.arrow.up.right.fill")
                         .resizable()
                         .scaledToFit()
                         .frame(width: 16, height: 16)
                         .frame(width: 40, height: 40)
                         .background(Color("search color"))
                         .cornerRadius(20)
                         .foregroundColor(.gray)
                    
                    Text("Contact Number")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.black)
                        .opacity(0.3)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Button(action: {showingAlert = true}, label: {
                        Image(systemName: "chevron.right")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 16, height: 16)
                    })
                    
                }
                .padding(.top, 10)
            
                Divider()
                
                VStack{
                    
                    Text("Price Info")
                        .fontWeight(.medium)
                        
                    
                    HStack{
                        Text("Subtotal")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.gray)
                            .fontWeight(.light)
                            .padding(.vertical, 8)
                        
                        Spacer()
                        
                        Text("Rs \(order.totalPrice, specifier: "%.2f")")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.gray)
                            .fontWeight(.light)
                            .padding(.vertical, 8)
                        
                    }
                    HStack{
                        Text("Delivery Charge")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.gray)
                            .fontWeight(.light)
                            .padding(.vertical, 8)
                        
                        Spacer()
                        
                        Text("-")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.gray)
                            .fontWeight(.light)
                            .padding(.vertical, 8)
                        
                    }
                    HStack{
                        Text("Total")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.gray)
                            .fontWeight(.light)
                            .padding(.vertical, 8)
                        
                        Spacer()
                        
                        Text("Rs \(order.totalPrice, specifier: "%.2f")")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.gray)
                            .fontWeight(.light)
                            .padding(.vertical, 8)
                        
                    }
                    
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
                            
            Button(action: {
        
                showingAlert = true
            }, label: {
                Text("Place to order")
                    .padding()
                    .padding(.horizontal)
                    .frame(width: 200, height: 60)
                    .background(Color("primary color"))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            })
        .padding(.bottom, 25)
                            
        }
            
            
           
            
        }.padding()
        .frame(width: 300, height: 600)
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 40)
        .overlay(
            Button{
                checkOut = false
                
            } label: {
                ZStack{
                           Circle()
                               .frame(width: 30, height: 30)
                               .foregroundColor(.white)
                               .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                           
                           Image(systemName: "xmark")
                               .imageScale(.small)
                               .frame(width: 44, height: 44)
                               .foregroundColor(.black)
                       }
            },
            alignment: .topTrailing
            
           
            
        )
        .alert("Please create an account before this action", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { 
                        checkOut = false
                        order.items.removeAll()
                    }
                }
        
        .alert("Please create an account before this action", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }
       

    }
    
}

#Preview {
    CheckoutView(checkOut: .constant(false))
}

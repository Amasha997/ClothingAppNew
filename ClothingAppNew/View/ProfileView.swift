//
//  ProfileView.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-19.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            VStack{
                HStack(spacing: 15){
                    Image("profile image")
                        .resizable()
                        .frame(width: 60,height: 60)
                        .cornerRadius(30)
                    
                    VStack {
                        HStack {
                            Text("User Name")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.black)
                                .fontWeight(.medium)
                            
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(Color("primary color"))
                            
                            Spacer()
                        }
                        
                        
                        .padding(.bottom, 4)
                        
                        Text("user@gmail.com")
                            .font(.system(size: 16, weight: .semibold))
                            .accentColor(.gray)
                            .fontWeight(.light)
                        
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 30)
                
                Divider()
                
                ScrollView {
                    LazyVStack{
                        VStack {
                            
//------------------------------------------Account - My Account---------------------------------------
                            HStack (spacing: 16){
                               Image(systemName: "person.text.rectangle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                
                                Text("My Account")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                Image(systemName: "chevron.right")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 16, height: 16)
                                
                            }
                            .padding(20)
                            Divider()
                            
//------------------------------------------Account - My Account END---------------------------------------
                            
//------------------------------------------Account - order---------------------------------------
                            
                            HStack (spacing: 16){
                               Image(systemName: "bag")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                
                                Text("Order")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                Image(systemName: "chevron.right")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 16, height: 16)
                                
                            }
                            .padding(20)
                            Divider()
                            
//------------------------------------------Account - order END---------------------------------------
                            
//------------------------------------------Account - Delivery Address---------------------------------------
                            
                            HStack (spacing: 16){
                               Image(systemName: "location")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                
                                Text("Delivery Address")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                Image(systemName: "chevron.right")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 16, height: 16)
                                
                            }
                            .padding(20)
                            Divider()
                            
//------------------------------------------Account - Delivery Address END---------------------------------------
                            
//------------------------------------------Account - Payment Methods---------------------------------------
                            
                            HStack (spacing: 16){
                               Image(systemName: "menubar.dock.rectangle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                
                                Text("Payment Methods")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                Image(systemName: "chevron.right")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 16, height: 16)
                                
                            }
                            .padding(20)
                            Divider()
                            
//------------------------------------------Account - Payment Methods END---------------------------------------
                            
//------------------------------------------Account - Promo Code---------------------------------------
                            
                            HStack (spacing: 16){
                               Image(systemName: "ticket")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                
                                Text("Promo Code")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                Image(systemName: "chevron.right")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 16, height: 16)
                                
                            }
                            .padding(20)
                            Divider()
                            
//------------------------------------------Account - Promo Code END---------------------------------------
                            
//------------------------------------------Account - notification---------------------------------------
                            
                            HStack (spacing: 16){
                               Image(systemName: "bell")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                
                                Text("Notification")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.black)
                                    .fontWeight(.medium)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                
                                Image(systemName: "chevron.right")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width: 16, height: 16)
                                
                            }
                            .padding(20)
                            Divider()
                            
//------------------------------------------Account - Notification END---------------------------------------
                        }
                    }
                }
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Logout")
                        .padding()
                        .padding(.horizontal)
                        .frame(width: 350, height: 60)
                        .background(Color("primary color"))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    })
                .padding(.bottom, 25)
            }
            .padding(.bottom)
        }
//        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView()
}

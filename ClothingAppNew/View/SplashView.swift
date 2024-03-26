//
//  SignInView.swift
//  ClothingAppNew
//
//  Created by NIBM-LAB04-PC07 on 2024-03-19.
//

import SwiftUI

struct SplashView: View {
    
    var order = Order()
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if(isActive){
            
            NavBarView().environmentObject(order)
        }
        else{
            VStack{
                ZStack{
                    Image("Splash Screen")
                        .resizable()
                        .scaledToFill()
//                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .ignoresSafeArea()
                    
                    
                    VStack{
                        Image("app logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
//                            .ignoresSafeArea()
                        
                        Text("Shopy fly")
                            .font(Font.custom("Baskerville-Bold", size: 26))
                            .foregroundColor(.white)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    NavigationView {
        SplashView()
    }
}

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
                HStack{
                    Image("profile image")
                        .resizable()
                        .frame(width: 60,height: 60)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}

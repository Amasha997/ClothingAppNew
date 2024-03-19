//
//  ButtonUI.swift
//  ClothingAppNew
//
//  Created by NIBM-LAB04-PC07 on 2024-03-19.
//

import SwiftUI

struct ButtonUI: View {
    @State var title: String = "Title"
    var didTap: (()->())?
    
    var body: some View {
        Button {
            didTap?()
        } label: {
            Text(title)
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.white)
        .cornerRadius(5)
    }
}

#Preview {
    ButtonUI()
        .padding(20)
}

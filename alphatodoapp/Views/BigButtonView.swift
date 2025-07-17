//
//  BigButtonView.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 17.07.2025.
//

import SwiftUI

struct BigButton: View {
    
    let title: String
    let action: () -> Void
    
    
    var body: some View {
        Button(action: action ,label:{
            ZStack{
                RoundedRectangle(cornerRadius: 5)
                    .foregroundStyle(.green)
                    .cornerRadius(16) // Yuvarlatılmış köşe
                    .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4)
                
                Text(title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        })
                   .frame(height: 50)
                   .padding(.horizontal)
    }
}

#Preview {
    BigButton(title: "Ornek Button ", action: {})
}

//
//  HeaderView.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 17.07.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("alpha-logo")
                .resizable()
                .frame(width: 400, height: 400)
                .padding()
        }
    }
}

#Preview {
    HeaderView()
}

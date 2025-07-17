//
//  LoginView.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        //SAYGALAR ARASI GEÇİŞ İÇİN
        NavigationStack{
            VStack{
                //Header
                HeaderView()
                    .padding()
                    .frame(width: .infinity , height: 200)
                //Form - email, sifre, button
                Form{
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    //TextField: kullanıcıdan veri almamıza yarar
                    TextField("Email", text: $viewModel.email)
                        .autocorrectionDisabled()
                    SecureField("Şifre", text: $viewModel.password)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                }
                .cornerRadius(16) // Yuvarlatılmış köşe
                .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4) // Hafif gölge
                .frame(height: 200)
                .padding()

                BigButton(title: "Giriş Yap" , action: {
                    viewModel.Login()
                })
                Spacer()
                    .frame(height: 40)
                

                //Footer - Hesabınız yok mu?
                VStack{
                    Text("Burada yeni misin?")
                    NavigationLink("Yeni hesap oluştur!", destination: RegisterView())
                }
            }
        }
    }
}

#Preview {
    LoginView()
}

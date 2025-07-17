//
//  RegisterView.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
// 
import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                //Header
                HeaderView()
                    .padding(.bottom)
                    .frame(width: 300 , height: 300)
                //Register
                Form{
                    Section(header: Text("Kayıt Formu")){
                        if !viewModel.errorMessage.isEmpty{
                            Text(viewModel.errorMessage)
                                .foregroundColor(.red)
                        }
                        
                        TextField("Tam Adınız", text: $viewModel.name)
                            .autocorrectionDisabled()
                        TextField("Email Adresiniz", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Şifreniz", text: $viewModel.password)
                    }
                }
                .frame(height: 250)
                
                BigButton(title: "Kayıt Ol" , action: {
                    viewModel.register()
                })
                Spacer()
                
                //Footer
                VStack{
                    Text("Zaten bizden biri misin?")
                    NavigationLink("Giriş Yap!", destination: LoginView())
                        .bold()
                }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    RegisterView()
}

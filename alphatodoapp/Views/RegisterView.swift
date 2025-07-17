//
//  RegisterView.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
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
                        
                        TextField("Tam Adınız", text: $name)
                            .autocorrectionDisabled()
                        TextField("Email Adresiniz", text: $email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Şifreniz", text: $password)
                    }
                }
                .frame(height: 200)
                
                BigButton(title: "Kayıt Ol" , action: {})
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

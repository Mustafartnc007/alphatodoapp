//
//  LoginView.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        //SAYGALAR ARASI GEÇİŞ İÇİN
        NavigationStack{
            VStack{
                //Header
                ZStack{
                    Image("alpha-logo")
                        .resizable()
                        .frame(width: 400, height: 400)
                        .padding()
                }
                //Form - email, sifre, button
                Form{
                    //TextField: kullanıcıdan veri almamıza yarar
                    TextField("Email", text: $email)
                    SecureField("Şifre", text: $password)
                }
                .scrollContentBackground(.hidden) // Form’un varsayılan arka planını kapat
                .background(Color.white) // Form kutusunun arka planı (çerçeve gibi görünür)
                .cornerRadius(16) // Yuvarlatılmış köşe
                .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4) // Hafif gölge
                .frame(height: 150)
                .padding(.horizontal)

                Button {
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundStyle(.green)
                            .cornerRadius(16) // Yuvarlatılmış köşe
                            .shadow(color: .gray.opacity(0.3), radius: 8, x: 0, y: 4)
                            
                        Text("Giriş Yap")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .frame(height: 50)
                    .padding(.horizontal)
                    
                        
                }.padding(.top)
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

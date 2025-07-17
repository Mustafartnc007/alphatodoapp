//
//  LoginViewViewModel.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    
    init() {}
    
    //Login butonu için
    func Login(){
        guard Validate()else{
            return
        }
        
     }
    
    //şifre ve email geçerli mi? kontrol için
    func Validate() -> Bool {
        errorMessage = ""
        //guard fonksiyonu early exit yapar.
        //alanlar boş mu ? kontrolü
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            errorMessage = "Lütfen tüm alanları doldurunuz!"
            return false
        }
        //email @ içeriyor mu? kontrolü
        guard email.contains("@") else{
            errorMessage = "Geçerli email giriniz!"
            return false
        }
        //password karakter sayısı 6 dan büyük mü? kontrolü
        guard password.count >= 6 else{
            errorMessage = "Şifreniz en az 6 karakterden uzunluğundan emin olunuz!"
            return false
        }
        return true
    }
    
}

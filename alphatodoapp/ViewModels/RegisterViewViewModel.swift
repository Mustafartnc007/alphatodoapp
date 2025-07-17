//
//  RegisterViewViewModel.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//
import FirebaseFirestore
import Foundation
import FirebaseAuth

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    //kayıt ol butonuna basıldığında kullanacağımız işlem
    func register(){
        guard validate() else { return }
        
        Auth.auth().createUser(withEmail: email, password: password){ [weak self] result,
            error in
            guard let userId = result?.user.uid else {
                return
            }
            //insert metodu çağırılacak
            self?.insertUserRecord(id: userId)
        }
    }
    //firestorda kullanıcı oluşturma fonksiyonu
    private func insertUserRecord(id: String){
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictinoary())
        
    }
    
    //validasyon kontrol işlemi
    private func validate() -> Bool {
        errorMessage = ""
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            errorMessage = "Lütfen tüm alanları doldurunuz!"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Lütfen geçerli bir email adresi giriniz!"
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Şifreniz en az 6 karakterden oluşmalıdır!"
            return false
        }
        
        return true
    }
}

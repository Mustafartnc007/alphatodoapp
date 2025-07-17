//
//  MainViewViewModel.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//
import FirebaseAuth
import Foundation

class MainViewViewModel:ObservableObject {
    @Published var currentUserId: String = ""
    
    init() {
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}

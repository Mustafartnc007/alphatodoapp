//
//  alphatodoappApp.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//
import FirebaseCore
import SwiftUI

@main
struct alphatodoappApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

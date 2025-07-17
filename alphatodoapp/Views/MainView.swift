//
//  ContentView.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            ToDoListView()
        }else{
            LoginView()
        }
        
    }
}

#Preview {
    MainView()
}

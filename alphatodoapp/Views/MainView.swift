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
            accountView
        }else{
            LoginView()
        }
    }
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Görevler", systemImage: "house")
                }
            ProfileView()
                .tabItem{
                    Label("Profil", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}

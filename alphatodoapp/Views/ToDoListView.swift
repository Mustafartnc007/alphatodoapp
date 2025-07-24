//
//  ToDoListView.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId: String
    init(userId:String){
        self.userId = userId
    }
        
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Görevler")
            .toolbar{
                Button{
                    //sheet açma kodları
                } label: {
                    Image(systemName: "plus")
                }
                
            }
        }
    }
}
    #Preview {
        ToDoListView(userId: "default")
    }


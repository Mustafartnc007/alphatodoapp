//
//  ToDoListItem.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage
import SwiftUI

struct ToDoListItem: Codable, Identifiable{
    
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
    
}

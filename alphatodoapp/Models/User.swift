//
//  User.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 10.07.2025.
//
import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

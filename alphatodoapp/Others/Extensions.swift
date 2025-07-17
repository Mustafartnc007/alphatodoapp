//
//  Extensions.swift
//  alphatodoapp
//
//  Created by Mustafa Ertunç on 17.07.2025.
//

import Foundation

extension Encodable{
    func asDictinoary() -> [String:Any]{
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String:Any]
            return json ?? [:]
        }catch{
            return [:]
        }
    }
}

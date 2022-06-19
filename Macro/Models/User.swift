//
//  User.swift
//  Macro
//
//  Created by sumayah on 13/11/1443 AH.
//

import Foundation

enum UserKind: Int, Codable {
    case customer = 0, provider = 1
    
}


struct User: Identifiable {
let id : String = UUID().uuidString
let passward : String
let fullName : String
let email : String
let profilePictureURL : String
let userType : UserKind
let order: Array<Order>
let rating: Array<String> // order
}

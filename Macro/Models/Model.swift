//
//  Model.swift
//  Macro
//
//  Created by sumayah on 02/11/1443 AH.
//

import Foundation
struct User : Identifiable{
    let id : String = UUID().uuidString
    let fullName : String
    let passward : String
}

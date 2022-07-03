//
//  premitanduser.swift
//  Macro
//
//  Created by najat ali on 27/11/1443 AH.
//

 import Foundation
 
struct permitanduser : Identifiable {
    let permit: Permit
    let user: User
    let id: String = UUID().uuidString
}

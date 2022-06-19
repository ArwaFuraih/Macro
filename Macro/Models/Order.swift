//
//  Order.swift
//  Macro
//
//  Created by sumayah on 13/11/1443 AH.
//

import Foundation

enum status: Int, Codable {
    
    case customer = 0, provider = 1
    
}

struct Order: Identifiable{
    var id: String
    let userID: User
    let droneType: String
    let Price: Double
    let status: Int
    let providerID: User
    let request: Request
}


struct Request: Identifiable {
    var id: ObjectIdentifier
    
    let locat : Array<String>
    let description: String
    let Attachment : String
    let pilot: Int
    let status: String
    let Hours: Int
}

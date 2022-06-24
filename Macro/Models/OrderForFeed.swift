//
//  OrderForFeed.swift
//  Macro
//
//  Created by sumayah on 23/11/1443 AH.
//

import Foundation

struct OrderForFeed : Identifiable{
    let order: Order
    let user: User
    let id: String = UUID().uuidString
//    var id : String {
//        order.id
//    }
    
    //static let postExample = PostForFeed(post: Post.post, user: User.user)
}

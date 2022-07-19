//
//  Offers .swift
//  Macro
//
//  Created by sumayah on 08/12/1443 AH.
//

import Foundation
import Lottie
import UIKit
import SwiftUI

enum OfferStatus: Int , CaseIterable {
    case new = 1
    case accepted = 2
    case rejected = 3
    
    var title: String {
        switch self {
        case .new:
            return "New"
        case .accepted:
            return "Accepted"
        case .rejected:
            return "Rejected"
        }
    }
    
    var color: SwiftUI.Color {
        switch self {
        case .new:
            return .white
        case .accepted:
            return .green
        case .rejected:
            return .red
        }
    }
}




struct Offers: Identifiable{
    var id: String = UUID().uuidString
    let orderID :String
    let providerID:String
    let price : String
    let offerStatus : OfferStatus
    let documentID: String
   
    
    
    init(dictionary: [String: Any], documentID: String) {
        self.id = dictionary[Offers.id] as? String ?? ""
        self.orderID = dictionary[Offers.orderID] as? String ?? ""
        self.providerID = dictionary[Offers.providerID] as? String ?? ""
        self.price = dictionary[Offers.price] as? String ?? ""
        let offerStatusToInt = dictionary[Offers.offerStatus] as? Int ?? 1
        self.offerStatus = OfferStatus(rawValue: offerStatusToInt) ?? .new
//        self.documentID = dictionary[Offers.documentID] as? String ?? ""

        self.documentID = documentID
}

    static let id = "id"
    static let orderID = "orderID"
    static let providerID = "providerID"
    static let price = "price"
    static let offerStatus = "offerStatus"
    static let documentID = "documentID"

}

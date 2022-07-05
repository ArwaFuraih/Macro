//
//  OrderCustFilter.swift
//  Macro
//
//  Created by sumayah on 06/12/1443 AH.
//

import Foundation

enum OrderCustFilter : Int,CaseIterable{
    case Orders
    case Offers
    
    
    var title:String{
        switch self {
        case .Orders:
            return "Orders"
        case .Offers:
            return "Offers"
        
        }
    }
}

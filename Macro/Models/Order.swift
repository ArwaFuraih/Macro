//
//  Order.swift
//  Macro
//
//  Created by sumayah on 13/11/1443 AH.
//

import SwiftUI
import Firebase

enum Status: String , CaseIterable {
    case new
    case accepted
    case closed
    case rejected
}

enum NameOfServece: String, CaseIterable {
    case Photography
    case Argiculture
    case Energy
    case Oil
}

struct Order: Identifiable{
    var id: String
    let userID: String
    let isprovider : Bool
    let NameOfServece : String
    let CustomerType : String
    let city : String
    let date: String
    let time: String
    let Hours: Int
    let description: String
    let Letter : String
    let pilot: Int
    let status: String
    let Price: Double
    let timestamp: Timestamp
   
    
   

    init(dictionary: [String: Any]) {
        self.id = dictionary[Order.id] as? String ?? ""
        self.userID = dictionary[Order.userID] as? String ?? ""
        self.isprovider = dictionary[Order.isprovider] as? Bool ?? true
        self.NameOfServece = dictionary[Order.NameOfServece] as? String ?? ""
        self.CustomerType = dictionary[Order.CustomerType] as? String ?? ""
        self.city = dictionary[Order.city] as? String ?? ""
        self.date = dictionary[Order.date] as? String ?? ""
        self.time = dictionary[Order.time] as? String ?? ""
        self.Hours = dictionary[Order.Hours] as? Int ?? 0
        self.description = dictionary[Order.description] as? String ?? ""
        self.pilot = dictionary[Order.pilot] as? Int ?? 0
        self.Letter = dictionary[Order.Letter] as? String ?? ""
        self.Price = dictionary[Order.Price] as? Double ?? 0.0
        self.status = dictionary[Order.status] as? String ?? ""
        self.timestamp = dictionary[Order.timestamp] as? Timestamp ?? Timestamp(date: Date())

        

    }

    
    
    static let id = "id"
    static let NameOfServece = "NameOfServece"
    static let userID = "userID"
    static let city = "city"
    static let CustomerType = "CustomerType"
    static let date = "date"
    static let time = "time"
    static let description = "description"
    static let Price = "Price"
    static let status = "status"
    static let isprovider = "isprovider"
    static let Hours = "Hours"
    static let pilot = "pilot"
    static let Letter = "Letter"
    static let timestamp = "timestamp"

  
    
    var timestampString: String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: timestamp.dateValue(), to: Date()) ?? ""
    }
    
    var detailedTimestampString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a · MM/dd/yyyy"
        return formatter.string(from: timestamp.dateValue())
    }

    
    
    
}
    















    

    
   


//
//  Order.swift
//  Macro
//
//  Created by sumayah on 13/11/1443 AH.
//

import SwiftUI
import Firebase

//"userID" :userID ,
//"city" : city ,
//"isprovider": isprovider,
//"NameOfServece":NameOfServece
//"CustomerType" : CustomerType ,
//"city":city,
//"dateAndTime":dateAndTime,
//"Hours":Hours,
//"timestamp" : timestamp ,
//"descrption" : adddescrption ,
//"lettel" : lettel ,
//"pilot" : addpilot ,
//"status":status,
//"Price":Price,



enum NameOfServece: String, CaseIterable {
    case Photography
    case Argiculture
    case Energy
    case Oil
}

/*
{
    "userID": "sbdkjbcdbc",
    "user_age": 10,
}
 */

//struct Order22: Decodable {
//    let userID: String
//    let age: Int
//
//    private enum CodingKeys: String, CodingKey {
//        case userID = "userID"
//        case age = "user_age"
//    }
//}

struct Order: Identifiable{
    var id: String = UUID().uuidString
    let userID: String
//    let isprovider : Bool
    var nameOfServece : NameOfServece
    let CustomerType : String
    let city : String
    let dateAndTime : Timestamp
//    let date: String
//    let time: String
    let Hours: Int
    let description: String
    let Letter : String
    let pilot: Int
    let morepilot: Int
    var cancelled: Bool
    let Price: Double
    let timestamp: Timestamp
   
    
   

    init(dictionary: [String: Any]) {
        self.id = dictionary[Order.id] as? String ?? ""
        self.userID = dictionary[Order.userID] as? String ?? ""
//        self.isprovider = dictionary[Order.isprovider] as? Bool ?? true
        
        self.cancelled = dictionary[Order.cancelled] as? Bool ?? false


        let nameOfServeceString = dictionary[Order.nameOfServece] as? String ?? ""
        self.nameOfServece = NameOfServece(rawValue: nameOfServeceString) ?? .Photography

        
        self.CustomerType = dictionary[Order.CustomerType] as? String ?? ""
        self.city = dictionary[Order.city] as? String ?? ""
        
        
        self.dateAndTime = dictionary[Order.dateAndTime] as? Timestamp ?? Timestamp(date: Date())

        var date = Date(timeIntervalSince1970: TimeInterval(self.dateAndTime.seconds))
        print(date)
        
        
//        self.time = dictionary[Order.time] as? String ?? ""
        self.Hours = dictionary[Order.Hours] as? Int ?? 0
        self.description = dictionary[Order.description] as? String ?? ""
        
        self.pilot = dictionary[Order.pilot] as? Int ?? 0
        self.morepilot = dictionary[Order.morepilot] as? Int ?? 0

        self.Letter = dictionary[Order.Letter] as? String ?? ""
        self.Price = dictionary[Order.Price] as? Double ?? 0.0
        self.timestamp = dictionary[Order.timestamp] as? Timestamp ?? Timestamp(date: Date())

        

    }
    
//    static let order : Order = Order(dictionary: [Order.id:"123",
//                                                  Order.
//                                                 ])
    
    
    static let id = "id"
    static let nameOfServece = "nameOfServece"
    static let userID = "userID"
    static let city = "city"
    static let CustomerType = "CustomerType"
    static let date = "date"
    static let dateAndTime = "dateAndTime"
    static let time = "time"
    static let description = "description"
    static let Price = "Price"
    static let cancelled = "cancelled"
//    static let isprovider = "isprovider"
    static let Hours = "Hours"
    static let pilot = "pilot"
    static let morepilot = "morepilot"

    
    static let Letter = "Letter"
    static let timestamp = "timestamp"

  
    
    var timestampString: String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: dateAndTime.dateValue(), to: Date()) ?? ""
    }
    
    var detailedTimestampString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: dateAndTime.dateValue())
    }
    var detailedTimestampStringTime: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a "
        return formatter.string(from: dateAndTime.dateValue())
    }

    
    
    
}
    















    

    
   


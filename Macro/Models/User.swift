//
//  User.swift
//  Macro
//
//  Created by sumayah on 13/11/1443 AH.
//

import Foundation
import Firebase

struct User: Identifiable {
    
    let id : String
    let fullName : String
    let email : String
    let phone: String
    var isprovider : Bool
    let profilePic : String
    let profileDesc: String
    let DroneNumber : Int
    let FlyingPermit: String
    let profileImg: Array<String>
    let profileVd : Array<String>
    let orders: Array<String>
    let NationalID : String

    
    
    init(dictionary:[String:Any]){
        self.id = dictionary[User.id]  as? String ??  ""
        self.fullName = dictionary[User.fullName]  as? String ?? ""
        self.phone = dictionary[User.phone]   as? String ?? "N/A"
        self.email = dictionary[User.email]  as? String ?? "N/A"
        self.isprovider = dictionary[User.isprovider]  as? Bool ?? true
        self.profileImg = dictionary[User.profileImg]  as? [String] ?? []
        self.profilePic = dictionary[User.profilePic] as? String ?? ""
        self.profileDesc = dictionary[User.profileDesc] as? String ?? ""
        self.DroneNumber = dictionary[User.DroneNumber] as? Int ?? 0
        self.FlyingPermit = dictionary[User.FlyingPermit] as? String ?? ""
        self.profileVd = dictionary[User.profileVd]  as? Array ?? [""]
        self.orders = dictionary[User.orders] as? Array ?? [""]
        self.NationalID = dictionary[User.NationalID] as? String ?? ""


       
    }

  
    
    func getUserData()->([String:Any]){
        
        
        var data :[String:Any] = [:]
        
        data[User.id] = self.id
        data[User.fullName] = self.fullName
        data[User.phone] = User.phone
        data[User.email] = self.email
        data[User.isprovider] = User.isprovider
        data[User.profileImg] = self.profileImg
        data[User.profileDesc] = self.profileDesc
        data[User.profileVd] = self.profileVd
        data[User.profilePic] = self.profilePic
        data[User.orders] = self.orders
        data[User.NationalID] = self.NationalID

        
        
        return data


    }
    
    
    
    static let id                   = "id"
    static let fullName             = "fullName"
    static let email                = "email"
    static let phone                = "phone"
    static let isprovider           = "isprovider"
    static let profileImg           = "profileImg"
    static let profilePic           = "profilePic"
    static let profileDesc          = "profileDesc"
    static let DroneNumber          = "DroneNumber"
    static let FlyingPermit         = "FlyingPermit"
    static let profileVd            = "profileVd"
    static let orders               = "orders"
    static let NationalID           = "NationalID"
    
    
    
}



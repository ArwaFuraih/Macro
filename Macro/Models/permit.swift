//
//  permit.swift
//  Macro
//
//  Created by najat ali on 27/11/1443 AH.
//

import Foundation
import Firebase
 
 
struct Permit: Identifiable{
    
    var id: String
    let userid : String
    let name: String
    let nationalid: String
    let hight : String
    let duration : String
    let location : String
    let startdateandtime: Timestamp
    let enddateandtime: Timestamp
    let Letter : String
    let activitytype : String
    let flyingdescription: String
    let primttype: String
    let pilotnumber: String
    let licensenumber : String
    let Dronespermit : String
    let morehight : String
    let moreduration : String
    let morepilot : String

      init(dictionary: [String: Any]) {
        self.id = dictionary[Permit.id] as? String ?? ""
        self.userid = dictionary[Permit.userid] as? String ?? ""
        self.name = dictionary[Permit.name] as? String ?? ""
        self.nationalid = dictionary[Permit.nationalid] as? String ?? ""
        self.hight = dictionary[Permit.hight] as? String ?? ""
        self.duration = dictionary[Permit.duration] as? String ?? ""
        self.location = dictionary[Permit.location] as? String ?? ""
        self.Letter = dictionary[Permit.Letter]  as? String ?? ""
        self.activitytype = dictionary[Permit.activitytype] as? String ?? ""
        self.flyingdescription = dictionary[Permit.flyingdescription]  as? String ?? ""
        self.primttype = dictionary[Permit.primttype] as? String ?? ""
        self.pilotnumber = dictionary[Permit.pilotnumber]  as? String ?? ""
        self.licensenumber = dictionary[Permit.licensenumber]  as? String ?? ""
        self.Dronespermit = dictionary[Permit.Dronespermit]  as? String ?? ""
        self.morehight = dictionary[Permit.morehight]  as? String ?? ""
        self.moreduration = dictionary[Permit.moreduration]  as? String ?? ""
        self.morepilot = dictionary[Permit.morepilot]  as? String ?? ""
        self.startdateandtime = dictionary[Permit.startdateandtime] as?  Timestamp ?? Timestamp(date: Date())
        self.enddateandtime = dictionary[Permit.enddateandtime] as?  Timestamp ?? Timestamp(date: Date())

      }

    
    
    static let id = "id"
    static let userid = "userid"
    static let name = "name"
    static let nationalid = "nationalid"
    static let hight = "hight"
    static let duration = "duration"
    static let location = "location"
    static let startdateandtime = "startdateandtime"
    static let enddateandtime = "enddateandtime"
    static let Letter = "Letter"
    static let activitytype = "activitytype"
    static let flyingdescription = "flyingdescription"
    static let primttype = "primttype"
    static let pilotnumber = "pilotnumber"
    static let licensenumber = "licensenumber"
    static let Dronespermit = "Dronespermit"
    static let morehight = "morehight"
    static let moreduration = "moreduration"
    static let morepilot = "morepilot"

     
    var timestampString: String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: startdateandtime.dateValue(), to: Date()) ?? ""
    }
    
     
    var detailedTimestampString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a · MM/dd/yyyy"
        return formatter.string(from: startdateandtime.dateValue())
    }
    
    var timestampString2: String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: enddateandtime.dateValue(), to: Date()) ?? ""
    }


    var detailedTimestampString2: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a · MM/dd/yyyy"
        return formatter.string(from: enddateandtime.dateValue())
    }

    func getData()->([String:Any]){
        
        var data : [String:Any] = [:]
        data[Permit.id] = self.id
        data[Permit.userid] = self.userid
        data[Permit.name] = self.userid
        data[Permit.nationalid] = self.userid
        data[Permit.hight] = self.hight
        data[Permit.duration] = self.duration
        data[Permit.location] = self.location
        data[Permit.startdateandtime] = self.startdateandtime
        data[Permit.enddateandtime] = self.enddateandtime
        data[Permit.Letter] = self.Letter
        data[Permit.activitytype] = self.activitytype
        data[Permit.flyingdescription] = self.flyingdescription
        data[Permit.primttype] = self.primttype
        data[Permit.pilotnumber] = self.pilotnumber
        data[Permit.licensenumber] = self.licensenumber
        data[Permit.morehight] = self.morehight
        data[Permit.moreduration] = self.moreduration
        data[Permit.morepilot] = self.morepilot

     //......
        return data
    }
 }
 











    

    
   


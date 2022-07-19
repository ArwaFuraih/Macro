//
//  permitviewmodel.swift
//  Macro
//
//  Created by najat ali on 27/11/1443 AH.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift
import FirebaseAuth
import SwiftUI


 class permitviewModel: ObservableObject {
     @Published var permit = [permitanduser]()
     @Published var permits = [permitanduser]()
     @Published var newpermit = [Permit]()
     @Published var list = [User]()
     @Published var allpermits = [Permit]()
     @Published var currentUserOrder = [Permit]()

     @State var shouldPresentNextView : PermitDocID? = nil
     
     init(){
         if let user =  AuthViewModel.shared.user{
             if Auth.auth().currentUser != nil  {
                 self.getDate()
              }
          }
      }
     
        func getDate(){
             //guard uuid
            permits = []
            let db = Firestore.firestore()
            let ref = db.collection("Permit").whereField("userid", isNotEqualTo: Auth.auth().currentUser?.uid ?? "")
            
            ref.getDocuments { snapshot, error in
                guard error == nil else {
                    print("error")
                    return
                }
                
                guard let docs = snapshot?.documents else  {return}
 
                let allUserIds = docs.map { doc -> String in
                    let permit = Permit(dictionary: doc.data())
                    return permit.userid
                }
             
                self.fetchUsers(userIds: allUserIds) { allUsers in
                    
                    for doc in docs {
                        let data = doc.data()
                        let docID = doc.documentID // orderID
                        //let isProvider = data["isprovider"] as? Bool ?? false
                        
                        
                        let permit = Permit(dictionary: data)
                        print(permit.name,"🌿")
                        
                        //print(isProvider)
                        guard let user = allUsers[permit.userid] else {continue}
                        
                        let permitForFeed = permitanduser(permit: permit, user: user , permitid: docID)
                        print(permitForFeed.id.isEmpty)
                        print(user.isprovider,"🌿🌷")
                        self.permits.append(permitForFeed)
                        // print(self.orders.count,"🎄")
                        //  bprint(orderForFeed.user.fullName)
     
                    }
                }
                
                
            }
            
        }

     func fetchUsers(userIds:[String], completion:@escaping([String:User])->()){
         Firestore.firestore().collection("user").whereField("id", in: userIds).getDocuments { snapshot, _ in
             guard let documents = snapshot?.documents else {
                 return
             }
             var allUsers : [String:User] = [:]
             documents.forEach { doc in
                 allUsers[doc.documentID] = User(dictionary: doc.data())
             }
 
             completion(allUsers)
             
             print("my id is \(userIds) fetchUsers --- userIds")
             
         }
         
     }
     func fetchpermits(permitIds:[String], completion:@escaping([String:Permit])->()){
         Firestore.firestore().collection("Permit").whereField("id", in: permitIds).getDocuments { snapshot, _ in
             guard let documents = snapshot?.documents else {
                 return
             }
             var allpermits : [String:Permit] = [:]
             documents.forEach { doc in
                 allpermits[doc.documentID] = Permit(dictionary: doc.data())
             }
             
              completion(allpermits)
             
             print("my id is \(allpermits) fetchpermits --- permitIds")
             
         }
      }
     
     
 
     func addpriemt(userid : String ,name : String, nationalid : String, hight: String, duration : String , location : String ,startdateandtime : Date , enddateandtime : Date , Letter: String , activitytype : String , flyingdescription : String, primttype: String , pilotnumber: String, licensenumber: String, Dronespermit: String,morehight: String, moreduration: String, morepilot: String)
    {
        let docRef = Firestore.firestore().collection("Permit").document()
        var data : [String:Any] = [:]
        data[Permit.userid] = userid
        data[Permit.name] = name
        data[Permit.nationalid] = nationalid
        data[Permit.hight] = hight
        data[Permit.duration] = duration
        data[Permit.location] = location
        data[Permit.startdateandtime] = startdateandtime
        data[Permit.enddateandtime] = enddateandtime
        data[Permit.Letter] = Letter
        data[Permit.activitytype] = activitytype
        data[Permit.flyingdescription] = flyingdescription
        data[Permit.primttype] = primttype
        data[Permit.pilotnumber] = pilotnumber
        data[Permit.licensenumber] = licensenumber
        data[Permit.Dronespermit] = Dronespermit
        data[Permit.morehight] = morehight
        data[Permit.moreduration] = moreduration
        data[Permit.morepilot] = morepilot
        let ref = Firestore.firestore().collection("Permit").document()
        data[Permit.id] = ref.documentID
        
        ref.setData(data) { err in
            if let err = err {return}
            
            print("done \(ref.documentID) ")
            self.shouldPresentNextView = PermitDocID(docID: ref.documentID)//.toggle()
        }
        //
        
    }
      
      
     func fetchpermits(permitid:String,completion:@escaping(Permit)->()){
         Firestore.firestore().collection("Permit").document(permitid).getDocument{snapshot, _ in
             guard let orderData = snapshot?.data() else {
                 return
             }
             let permit = Permit(dictionary: orderData)
             print(permit.name,"☘️")
             completion(permit)
             
         }
     }
     
      
//
//     init() {
//         fethchPermit()
//     }
     
         
//         db.collection("Permit").addSnapshotListener { (querySnapshot, error) in
//             guard let newpermit = querySnapshot?.documents else {
//                 print("no permit")
//                 return
//              }
//
//             self.permit = newpermit.map{(queryDocumentSnapshot) -> Permit in
//                 let data = queryDocumentSnapshot.data()
//
//                   let id = data["id"] as? String ?? ""
//                   let userid = data["userid"] as? String ?? ""
//                   let name = data["name"] as? String ?? ""
//                   let nationalid = data["nationalid"] as? String ?? ""
//                   let hight = data["hight"] as? String ?? ""
//                   let duration = data["duration"] as? String ?? ""
//                   let location = data["location"] as? String ?? ""
//                   let startdateandtime = data["startdateandtime" ] as?  Timestamp ?? Timestamp(date: Date())
//                   let enddateandtime = data["enddateandtime"] as?  Timestamp ?? Timestamp(date: Date())
//                   let Letter = data["Letter"] as? String ?? ""
//                   let activitytype = data["activitytype"] as? String ?? ""
//                   let flyingdescription = data["flyingdescription"] as? String ?? ""
//                   let primttype = data["primttype" ] as? String ?? ""
//                   let pilotnumber = data["pilotnumber"] as? String ?? ""
//                   let licensenumber = data["licensenumber"] as? String ?? ""
//                   let Dronespermit = data["Dronespermit"] as? String ?? ""
//                   let morehight = data["morehight" ] as? String ?? ""
//                   let moreduration = data["moreduration"] as? String ?? ""
//                   let morepilot = data["morepilot"] as? String ?? ""
//
//
//                 return Permit(id: id, userid: userid, name: name, nationalid: nationalid, hight: hight, duration: duration, location: location, startdateandtime: startdateandtime, enddateandtime: enddateandtime, Letter: Letter, activitytype: activitytype, flyingdescription: flyingdescription, primttype: primttype, pilotnumber: pilotnumber, licensenumber: licensenumber, Dronespermit: Dronespermit, morehight: morehight, moreduration: moreduration, morepilot: morepilot)
//             }
//             }
//     }
//
//
//
//    }
//
//
//
//
//
//
//
//
//     let db = Firestore.firestore()
//
//     let data: Dictionary<String, Any> = [
//         "userid" : userid ,
//         "name" : name ,
//         "nationalid" : nationalid , "hight" : hight , "duration" : duration , "location" : location , "startdateandtime" : startdateandtime ,"enddateandtime" : enddateandtime ,"Letter" : Letter , "activitytype" : activitytype , "flyingdescription": flyingdescription,"primttype": primttype,"pilotnumber": pilotnumber, "licensenumber": licensenumber, "Dronespermit" : Dronespermit, "morehight": morehight, "moreduration": moreduration, "morepilot": morepilot]
//
//     db.collection("Permit").addDocument(data: data) { error in
//
//      if error == nil {
//         print("no error")
////             self.getData()
//     }
//         else {
//             print("handle the error")
//
//         }
//     }
//     }
//
 }
 

                     

//
//  permitviewmodel.swift
//  Macro
//
//  Created by najat ali on 27/11/1443 AH.
//

import Foundation
import Firebase
import FirebaseFirestore

 class permitviewModel: ObservableObject {
     @Published var permit = [permitanduser]()
     @Published private(set) var orders: [Order] = []
     @Published private(set) var permits: [Permit] = []
     @Published var  mytotal = 700
   
     let paymentHandler = PaymentHandler()
     @Published var paymentSuccess = false
     
     
     private var db = Firestore.firestore()


     func addpriemt(userid : String ,name : String, nationalid : String, hight: String, duration : String , location : String ,startdateandtime : Date , enddateandtime : Date , Letter: String , activitytype : String , flyingdescription : String, primttype: String , pilotnumber: String, licensenumber: String, Dronespermit: String,morehight: String, moreduration: String, morepilot: String)
    {
         
        let db = Firestore.firestore()
        
        let data: Dictionary<String, Any> = [
            "userid" : userid ,
            "name" : name ,
            "nationalid" : nationalid , "hight" : hight , "duration" : duration , "location" : location , "startdateandtime" : startdateandtime ,"enddateandtime" : enddateandtime ,"Letter" : Letter , "activitytype" : activitytype , "flyingdescription": flyingdescription,"primttype": primttype,"pilotnumber": pilotnumber, "licensenumber": licensenumber, "Dronespermit" : Dronespermit, "morehight": morehight, "moreduration": moreduration, "morepilot": morepilot]
        
        db.collection("Permit").addDocument(data: data) { error in
            
         if error == nil {
            print("no error")
//             self.getData()
        }
            else {
                print("handle the error")

            }
        }
        }
     init() {
         fethchPermit()
     }
     func fethchPermit() {
         permit = []
         let db = Firestore.firestore()
         let ref = db.collection("Permit")
         
         
         ref.getDocuments { snapshot, error in
             guard error == nil else {
                 print("error")
                 return
             }
             // 
             guard let docs = snapshot?.documents else  { return}
                 for doc in docs{
                     let data = doc.data()
                     let permit = Permit(dictionary:data)
                     print(permit.location ,"🌿")
                     self.fechOrderProvider(withId: permit.userid) { user in
                         let permitForFeed = permitanduser(permit: permit, user: user)
                         self.permit.append(permitForFeed)
                     }

                     
                        }
                        }
                        }
         
                func fechOrderProvider(withId:String,completion:@escaping(User)->()){
                 print("my id is", withId)
                 Firestore.firestore().collection("user").document(withId).getDocument { snapshot, _ in
                     guard let userData = snapshot?.data() else {
                         return
                     }
                     let user = User(dictionary: userData)
                     print(user.fullName,"☘️")
                     completion(user)
                 }
 
                 }
         
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
     
     
     func payPermit() {
         paymentHandler.startPayment(products: orders, total: mytotal) { success in
             self.paymentSuccess = success
             self.permits = []
             
         }
   
     }
     
//     func payOrder() {
//         paymentHandler.startPayment(products: orders, total: total) { success in
//             self.paymentSuccess = success
//             self.orders = []
//         }
//     }
     
   

//         paymentHandler.startPayment(products: products, total: total) { success in
//             self.paymentSuccess = success
//             self.products = []
//             self.total = 0
//         }
         
     }
//




                     

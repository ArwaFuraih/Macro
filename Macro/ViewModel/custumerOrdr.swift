////
////  custumerOrdr.swift
////  Macro
////
////  Created by sumayah on 20/11/1443 AH.
////
//
//import Foundation
//import Firebase
//
//class custumerOrdr : ObservableObject{
//    @Published var list = [Order]()
//
//}
//    func getData(){
//        let db = Firestore.firestore()
//        db.collection("Order").getDocuments { snapshot, error in
//            if error == nil {
//                if let snapshot = snapshot {
//                    snapshot.documents.compactMap { d in
//
//                        /// another get for providerID {
//                        ///
//                        ///
//                        /// }
//                        ///
//                        
//                        
////                        return Order(id: d.documentID, userID: d["userID"] as! User , droneType: d["droneType"] as! String, Price: ["Price"] as! String, status: ["status"] as! Int, providerID: ["providerID"] as! User, request: ["request"] as! String)
//                        
////                        return Order(d)
//
//                    }
//                }
//
//            }else{
//            }
//        }
//
//
//            }
//
//
//
//
//
//

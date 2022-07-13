////
////  orderService.swift
////  Macro
////
////  Created by sumayah on 14/12/1443 AH.
////
//
//import Foundation
//import Firebase
//
//struct orderService{
//    func fetchorder(forUid uid: String,completion: @escaping([Order])->Void){
//        Firestore.firestore().collection("Order").document(uid)
//        
//            .getDocument{ snapshot, _ in
//                guard let documents = snapshot?.documents else { return }
//                documents.forEach { doc in
//                    let orderID = doc.
//                }
//                
//            }
//        print("DEBUG: fetchOrder ")
//    }
////    func fetchOrder(forUid uid:String ,completion: @escaping([Order])->Void){
////
////    }
//}

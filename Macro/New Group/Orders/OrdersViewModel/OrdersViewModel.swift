////
////  OrdersViewModel.swift
////  Macro
////
////  Created by sumayah on 04/12/1443 AH.
////
//
//import Foundation
//import Firebase
//class OrdersViewModel : ObservableObject{
//    @Published var orders = [Order]()
//    private let service = orderService()
//    let user :User
//
//
////    @Published var orders: [Order] = []
//
//
//    init(user :User){
//        self.user = user
//        self.fetchUserOrder()
//        
//    }
//    
//    func fetchUserOrder(){
//        guard let uid = user.id else {return}
//        service.fetchorder(forUid: uid) { orders in
//            
//        }
//
//        
//        }
//    }
//
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
////    func addOrder(order: Order){
////        let dataOrder = ["id": order.id,
////                         "customerId": order.customerId,
////                         "providerId": order.providerId,
////                         "isprovider": order.isprovider,
////                         "customerId": order.customerId,
////                         "providerId": order.providerId,
////                         "CustomerType": order.CustomerType,
////                         "city": order.city,
////                         "dateAndTime": order.dateAndTime,
////                         "Hours": order.Hours,
////                         "description": order.description,
////                         "Letter": order.Letter,
////                         "pilot": order.pilot,
////                         "status": order.status,
////                         "Price": order.Price,
////                         "timestamp": order.timestamp,
////                         "userType": order.userType,
//////                         "NameOfServece": order.NameOfServece,
//////                         "status": order.status,]as [String:Any]
////              "NameOfServece": order.NameOfServece.rawValue,
////              "status": order.status.rawValue] as [String : Any]
////        Firestore.firestore().collection("Order")
////            .document(order.status.rawValue).collection("Order").document(order.id)
////            .setData(dataOrder)
////
////
////        let userDic = [
////
////            "id": user.id,
////            "fullName": user.fullName,
////            "phone": user.phone,
////            "email": user.email,
////            "isprovider": user.isprovider,
////            "profilePic": user.profilePic,
////            "profileDesc": user.profileDesc,
////            "DroneNumber": user.DroneNumber,
////            "FlyingPermit": user.FlyingPermit,
////            "profileImg": [user.profileImg],
////            "profileVd": [user.profileVd],
////            "DroneNumber": user.DroneNumber,
////            "NationalID": user.NationalID,
////
////            "orders": [order.id] ] as [String : Any]
////
////        Firestore.firestore().collection("User").document(user.id).setData(userDic, merge: true)
////
////        Firestore.firestore().collection("User").document(user.id)
////            .collection(order.status.rawValue).document(order.id)
////            .setData(dataOrder)
////
////
////    }
//
//}
//
//

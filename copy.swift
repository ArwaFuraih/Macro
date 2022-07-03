////
////  custumerOrdr.swift
////  Macro
////
////  Created by sumayah on 20/11/1443 AH.
////
//
//import Foundation
//import Firebase
//class custumerOrdr : ObservableObject{
//    //    @Published var list = [Order]()
//    @Published var orders = [OrderForFeed]()
//    @Published var list = [User]()
//    @Published var order = [Order]()
//    @Published var currentUserOrder = [Order]()
//    static let shared = custumerOrdr()
//
//
//
////    init(){
////        getDate()
////    }
//
////    func getDate(){
////        orders = []
////        let db = Firestore.firestore()
////        let ref = db.collection("Order")
////
////
////        //        ref.getDocuments { snapshot, error in
////        //            guard error == nil else {
////        //            print(error)
////        //            return
////        //            }; guard let docs = snapshot?.documents else  { return}
////        //            docs.forEach { doc in
////        //                let data = doc.data()
////        //                let order = Order(dictionary: data)
////        //                self.fetchOrderUser(withId: order.userID) { user in
////        //                    self.orders.append(OrderForFeed(order: order, user: user))
////        //                    self.orders = self.orders.sorted (by: {$0orders.timestamp.dateValue() > $1.orders.timestamp.dateValue()})
////        //                }
////        //            }
////
////
////        ref.getDocuments { snapshot, error in
////            guard error == nil else {
////                print("error")
////                return
////            }
////
////            guard let docs = snapshot?.documents else  { return}
////            for doc in docs{
////                let data = doc.data()
////                let isProvider = data["isprovider"] as? Bool ?? false
////
////
////                let order = Order(dictionary: data)
////                print(order.city,"🌿")
////
////                print(isProvider)
////                self.fechOrderProvider(withId:order.userID) { user in
////                    let orderForFeed = OrderForFeed(order: order, user: user)
////                    print(orderForFeed.id.isEmpty)
////                    print(user.isprovider,"🌿🌷")
////                    self.orders.append(orderForFeed)
////                    // print(self.orders.count,"🎄")
////                    //   print(orderForFeed.user.fullName)
////
////
////                }
////
////            }
////        }
////
////    }
//
//    func fechOrderProvider(userID:String,completion:@escaping(User)->()){
//
//        Firestore.firestore().collection("user").document(userID).collection("Order").getDocuments { snapshot, _ in
//            guard let snapshot = snapshot else {
//                return
//            }
//            for doc in snapshot.documents{
//                let order = Order(dictionary: doc.data())
//                self.currentUserOrder.append(order)
//            }
//
//            //                guard let userData = snapshot?.data() else {
//            //                    return
//            //                }
//            //
//            //                let user = User(dictionary: userData)
//            //                print(user.fullName,"☘️")
//            //                print(user.isprovider)
//            //                completion(user)
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
//    //-------------------------------------------------
//
//    private var db = Firestore.firestore()
//
//    func fetchCureentUser(userID:String){
//        Firestore.firestore().collection("user").document(userID).collection("Order").getDocuments { snapshot, _ in
//            guard let snapshot = snapshot else {
//                return
//            }
//            for doc in snapshot.documents{
//                let order = Order(dictionary: doc.data())
//                self.currentUserOrder.append(order)
//            }
//
//
//        }
//
//
//
//
//        func addorder(userID : String , city : String , userType: String, timestamp : Date , adddescrption: String ,lettel : String , addpilot: String , morepilot: String)
//        {
//
//            let db = Firestore.firestore()
//            let orderID = UUID().uuidString
//            db.collection("Order").document(orderID).setData(["id": orderID,
//                                                              "userID" :userID ,
//                                                              "city" : city ,
//                                                              "userType" : userType ,
//                                                              "timestamp" : timestamp ,
//                                                              "descrption" : adddescrption ,
//                                                              "lettel" : lettel ,
//                                                              "pilot" : addpilot ,
////                                                              "morepilot": morepilot
//                                                             ])
//
//            db.collection("user").document(userID).collection("Order").document(orderID).setData(["id": orderID,
//                                                                                                  "userID" :userID ,
//                                                                                                  "city" : city ,
//                                                                                                  "userType" : userType ,
//                                                                                                  "timestamp" : timestamp ,
//                                                                                                  "descrption" : adddescrption ,
//                                                                                                  "lettel" : lettel ,
//                                                                                                  "pilot" : addpilot ,
////                                                                                                  "morepilot": morepilot
//                                                                                                 ])
//
//        }
//
//
//        func updateOrder(order:Order){
//            let orderdata = [
//                "providerId":order.providerId,
//                "id": order.id,
//                "userID" :order.userID ,
//                "city" : order.city ,
//                "userType" : order.userType ,
//                "timestamp" : order.timestamp ,
//                "description" : order.description ,
//                "lettel" : order.Letter ,
//                "pilot" : order.pilot ,
//
//            ] as [String : Any]
//            db.collection("Order").document(order.id).setData(orderdata)
//
//            db.collection("user").document(order.userID).collection("Order").document(order.id).setData(orderdata)
//
//        }
//        //------------------------------------------------------------------------
//
//
//
//        //    func addOrder(order: Order){
//        //        let dataOrder = ["id": order.id,
//        //                         "customerId": order.customerId,
//        //                         "providerId": order.providerId,
//        //                         "city" : order.city ,
//        //                         "userType" : order.userType ,
//        //                         "timestamp" : order.timestamp ,
//        //                         "descrption" : order.description,
//        //                         "Letter" : order.Letter ,
//        //                         "pilot" : order.pilot ,
//        ////                         "morepilot": order.
//        ////                         "NameOfServece": order.NameOfServece.rawValue,
//        //                         "status": order.status.rawValue] as [String : Any]
//        //        Firestore.firestore().collection("Order")
//        //            .document(order.status.rawValue)
//        //            .collection("Order").document(order.id)
//        //            .setData(dataOrder)
//        //
//        //
//        //        let userDic = [
//        //            "id": User.id,
//        //            "isProvider":User.isprovider,
//        //            "fullName": User.fullName,
//        //            "email": User.email,
//        //            "orderIds": [order.id] ] as [String : Any]
//        //
//        //        Firestore.firestore().collection("User").document(User.id).setData(userDic, merge: true)
//        //
//        //        Firestore.firestore().collection("User").document(User.id)
//        //            .collection(order.status.rawValue).document(order.id)
//        //            .setData(dataOrder)
//        //
//        //
//        //    }
//
//
//
//    }
//}

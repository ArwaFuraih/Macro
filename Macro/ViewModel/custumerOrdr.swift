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
////    @Published var list = [Order]()
//
//    @Published var list = [Order]()
//    @Published var users = [User]()
//
//    init(){getDate()}
//
//    func getDate(){
//        list = []
//        let db = Firestore.firestore()
//        let ref = db.collection("Order")
//
//        ref.getDocuments { snapshot, error in
//            guard error == nil else {
//                print(error)
//                return
//            }
//
//            if let snapshot = snapshot {
//                for doc in snapshot.documents{
//                    let data = doc.data()
//                    let order = Order(dictionary: data)
//                   
//
//
////                let id = data["id"] as? String ?? ""
////                let userID = data["userID"] as? String ?? ""
////                let city = data["city"] as? String ?? ""
////                let CustomerType = data["CustomerType"] as? String ?? ""
////                let date = data["date"] as? String ?? ""
////                let time = data["time"] as? String ?? ""
////                let description = data["description"] as? String ?? ""
////                let Price = data["Price"] as? Double ?? 0.0
////                let status = data["status"] as? String ?? ""
////                let isprovider = data["isprovider"] as? Bool ?? true
////                let Letter = data["Letter"] as? String ?? ""
////                let Hours = data["Hours"] as? Int ?? 0
////                let pilot = data["pilot"] as? Int ?? 0
////                let NameOfServece = data["NameOfServece"] as? String ?? ""
//
////                    let order = Order(id: id, userID: userID, city: city, CustomerType: CustomerType, date: date, time: time, description: description, Price: Price, status: status, isprovider: isprovider, Letter: Letter, Hours: Hours, pilot: pilot, NameOfServece: NameOfServece)
//
//                    self.list.append(order)
//                }
//            }
//        }
//
////        db.collection("Order").getDocuments { snapshot, error in
////            //check for error
////                if error == nil {
////                    //no error
////                    if let snapshot = snapshot {
////                        DispatchQueue.main.async {
////                            //get all document
////                            self.list = snapshot.documents.map { order in
////
////                                return Order(id: order.documentID,
////                                             userID: order["userID"] as? String ?? "",
////                                             city: order["city"] as? String ?? "",
////                                             CustomerType: order["CustomerType"] as? String ?? "",
////                                             date: order["date"] as? String ?? "",
////                                             time: order["time"] as? String ?? "",
////                                             description: order["description"] as? String ?? "",
////                                             Price: order["userID"] as? Double ?? 0.0,
////                                             status: order["status"] as? String ?? "",
////                                             isprovider: order["isprovider"] as? Bool ?? true,
////                                             Letter: order["Letter"] as? String ?? "",
////                                             Hours: order["Hours"] as? Int ?? 0,
////                                             pilot: order["Hours"] as? Int ?? 0,
////                                             NameOfServece: order["NameOfServece"] as? String ?? ""
////                                            )
////
////
////                            }
////                        }
////
////
////    }
////
////                }else{
////
////                }
////
////        }}
//
//
//
//
//        print(self.list,"☘️")
//
//}
//
//    func addOrder(x:String){
//        let db = Firestore.firestore()
//        let ref = db.collection("Order").document(x)
//        ref.setData(["Price" : 12])
////        {error in
//////            if  let error ==  error {
//////                print(error)
//////
//////        }
////
////
////    }
//}
//
//    func getUsersData(){
//        users = []
//        let db = Firestore.firestore()
//        let refUser = db.collection("User")
//        refUser.getDocuments { snapshot, error in
//            guard error == nil else {
//                print(error)
//                return
//            }
//
//            if let snapshot = snapshot {
//                for doc in snapshot.documents{
//                    let data = doc.data()
//                    let user = User(dictionary: data)
//                    self.list.append(user)
//
//
//    }
//
//
//
//
////                let id = data["id"] as? String ?? ""
////                let userID = data["userID"] as? String ?? ""
////                let city = data["city"] as? String ?? ""
////                let CustomerType = data["CustomerType"] as? String ?? ""
////                let date = data["date"] as? String ?? ""
////                let time = data["time"] as? String ?? ""
////                let description = data["description"] as? String ?? ""
////                let Price = data["Price"] as? Double ?? 0.0
////                let status = data["status"] as? String ?? ""
////                let isprovider = data["isprovider"] as? Bool ?? true
////                let Letter = data["Letter"] as? String ?? ""
////                let Hours = data["Hours"] as? Int ?? 0
////                let pilot = data["pilot"] as? Int ?? 0
////                let NameOfServece = data["NameOfServece"] as? String ?? ""
//
////                    let order = Order(id: id, userID: userID, city: city, CustomerType: CustomerType, date: date, time: time, description: description, Price: Price, status: status, isprovider: isprovider, Letter: Letter, Hours: Hours, pilot: pilot, NameOfServece: NameOfServece)
//
//            }
//        }
//    }
//}

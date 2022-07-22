//
//  custumerOrdr.swift
//  Macro
//
//  Created by sumayah on 20/11/1443 AH.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift
import FirebaseAuth
import SwiftUI


class custumerOrder : ObservableObject {
    @Published var order = [OrderForFeed]()
    @Published var orders = [OrderForFeed]()
    @Published var listOffers = [OfferForFeed]()

    @Published var offers = [Offers]()
    @Published var list = [User]()
    @Published var allorders = [Order]()
    @Published var currentUserOrder = [Order]()
    static let shared = custumerOrder()
    @Published var user : User?


    init(){
        if let user =  AuthViewModel.shared.user{
            if Auth.auth().currentUser != nil  {
                self.getData()
                self.getOffers()
            
             
            }
            
        }

    }
    

    func fetchUserData(){
        guard let uid = Auth.auth().currentUser?.uid  else {return}
        Firestore.firestore().collection("user").document(uid).getDocument { snapshot,error in
            if let error = error{
                print(error)
                return
            }
            guard let userData = snapshot?.data() else {return}

            self.user = User(dictionary: userData)
        }
    }
    
    
    
    
    
    // Fetch offers userId, OrderId]
    // map userId [ArrayOfIds]
    // fetch userIds in ArrayOfIds
    // map orderId [ArrayOfOrderIds]
    // fetch Orders in ArrayOfOrderIds
    
    func getOffers(){
        listOffers = []
      
        let db = Firestore.firestore()
        let ref = db.collection("Offers").whereField("providerID", isNotEqualTo: Auth.auth().currentUser?.uid ?? "")

        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print("error")
                return
            }
            
            guard let docs = snapshot?.documents else  {return}
            
            
            let allUserIds = docs.map { doc -> String in
                let offer = Offers(dictionary: doc.data(), documentID: doc.documentID)
                return offer.providerID
            }
            
            let allOrderIds = docs.map { doc -> String in
                let offer = Offers(dictionary: doc.data(), documentID: doc.documentID)
                return offer.orderID
            }
            
//            offer array{
//                [id , userId 1, orderId]
//                [id , userId 2, orderId]
//                [id , userId 3, orderId]
//
//            }
//
//            user array{
//                [1, som]
//                [2, nourah]
//                [3, nouf]
//            }
//            order{
//
//            }
            self.fetchUsers(userIds: allUserIds) { allUsers in
                self.fetchOrders(orderIds: allOrderIds) { allOrders in
                    
                    
                    for doc in docs {
                        let data = doc.data()
                        let docID = doc.documentID
                        let offer = Offers(dictionary: data, documentID: docID)
                        
                        
                        print(offer.documentID,"🌿")
                        
                        guard let user = allUsers[offer.providerID] else {continue}
                        guard let order = allOrders[offer.orderID] else {continue}
                        
                        let offerForFeed = OfferForFeed(offer: offer, user: user, order: order, offerID: docID)
                        print(offerForFeed.id.isEmpty)
                        print(user.isprovider,"🌿🌷")
                        self.listOffers.append(offerForFeed)
                        
                        
                    }
                    
                }
            }
        }
    }
    
    func getData(){
        
        //guard uuid
        orders = []
        let db = Firestore.firestore()
        let ref = db.collection("Order").whereField("userID", isNotEqualTo: Auth.auth().currentUser?.uid ?? "")
        
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print("error")
                return
            }
            
            guard let docs = snapshot?.documents else  {return}
            
            
            let allUserIds = docs.map { doc -> String in
                let order = Order(dictionary: doc.data())
                return order.userID
            }
            
            self.fetchUsers(userIds: allUserIds) { allUsers in
                
                for doc in docs {
                    let data = doc.data()
                    let docID = doc.documentID // orderID
                    //let isProvider = data["isprovider"] as? Bool ?? false
                    
                    
                    let order = Order(dictionary: data)
                    print(order.city,"🌿")
                    
                    //print(isProvider)
                    guard let user = allUsers[order.userID] else {continue}
                    
                    let orderForFeed = OrderForFeed(order: order, user: user , orderID: docID)
                    print(orderForFeed.id.isEmpty)
                    print(user.isprovider,"🌿🌷")
                    self.orders.append(orderForFeed)
                    // print(self.orders.count,"🎄")
                    //  bprint(orderForFeed.user.fullName)
                    
                    
                    
                   
                    

                    
                  }
            }
 
        }
        
    }
    
    func fetchUsers(userIds:[String], completion:@escaping([String:User])->()){
        
        guard userIds.count != 0 else {return}
        
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
    
    func fetchOrders(orderIds:[String], completion:@escaping([String:Order])->()){
        Firestore.firestore().collection("Order").whereField("id", in: orderIds).getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else {
                return
            }
            var allOrders : [String:Order] = [:]
            documents.forEach { doc in
                allOrders[doc.documentID] = Order(dictionary: doc.data())
                print("my id is \(allOrders) fetchOrders -  orderIds")

            }
            
            
            completion(allOrders)
            

        }
        
    }
    
    
    
    
    
    func newOrderS(userID :  String,city:String,CustomerType:String,description:String,Letter:String,pilot:String,morepilot:String,dateAndTime:Date,nameOfServece:NameOfServece,cancelled:Bool,Hours:String){
        //        guard let uid =  AuthViewModel.shared.user else {return}
        let docRef = Firestore.firestore().collection("Order").document()
        var data : [String:Any] = [:]
        data[Order.city] = city
        data[Order.userID] = userID
        data[Order.CustomerType] = CustomerType
        data[Order.description] = description
        data[Order.Letter] = Letter
        data[Order.pilot] = pilot
        data[Order.morepilot] = morepilot
        data[Order.dateAndTime] = dateAndTime
        data[Order.nameOfServece] = nameOfServece.rawValue
        data[Order.cancelled] = cancelled
        data[Order.Hours] = Hours

        
        
        let ref = Firestore.firestore().collection("Order").document()
        data[Order.id] = ref.documentID
        
        ref.setData(data) { err in
            if let err = err {return}
            
        }
        print("done \(ref.documentID) ")
    }
    
    func fetchOrder(orderID:String,completion:@escaping(Order)->()){
        Firestore.firestore().collection("Order").document(orderID).getDocument{snapshot, _ in
            guard let orderData = snapshot?.data() else {
                return
            }
            let order = Order(dictionary: orderData)
            print(order.city,"☘️")
            completion(order)
            
        }
    }
    
    func fechOrderProvider(withId:String,completion:@escaping(User)->()){
        print("my id is  withId ", withId)
        Firestore.firestore().collection("user").document(withId).getDocument { snapshot, _ in
            guard let userData = snapshot?.data() else {
                return
            }
            let user = User(dictionary: userData)
            print(user.fullName,"☘️")
            completion(user)
        }
        
    }
    
    
    
    func addPrice( documentID:String, orderID: String, providerID:String ,price:String , offerStatus: OfferStatus){
        //let docRef = Firestore.firestore().collection("Offers").document()
        var data : [String:Any] = [:]
        data[Offers.price] = price
        data[Offers.providerID] = providerID
        data[Offers.orderID] = orderID
        data[Offers.documentID] = documentID
        data[Offers.offerStatus] = offerStatus.rawValue
        
        Firestore.firestore().collection("Offers").addDocument(data: data) { error in
            if let error = error { return }
            
        }
        
        // print("done \(data[Offers.orderID]) ")
        
        //        Firestore.firestore().collection("Order").getDocuments {snapshot, error in
        //            guard error == nil else {
        //                print("error")
        //                return
        //            }
        //            guard let docs = snapshot?.documents else  {return}
        //
        //
        //            let allUserIds = docs.map { doc -> String in
        //                let order = Order(dictionary: doc.data())
        //                return order.id
        //            }
        //
        //            self.fetchOrderProvider(userIds: allUserIds ) { providerID in
        //
        //                for doc in docs {
        //                    var data = doc.data()
        //                    let docID = doc.documentID // orderID
        //                    data[Offers.orderID] = docID
        //                    print("DEBG: OrderID is \(docID)🌷🌷")
        //                }
        //                data[Offers.offerStatus] = offerStatus.rawValue
        //
        //                let ref = Firestore.firestore().collection("Offers").document()//.whereField("providerID", isEqualTo: providerID).whereField("orderID", isEqualTo: orderID)//
        //                ref.setData(data) { err in
        //                    if let err = err {
        //                        return}
        //                }
        //                print("done \(data[Offers.orderID]) ")
        //
        //            }
        
        
        //        let OrderID = Firestore.firestore().collection("Order").document().documentID
        
        
        
        //
    }


func showOffers(documentID:String, status: OfferStatus, completion : @escaping([Offers])->()){
    
        print("showOffers")
    offers = []
//    guard case let offers =! nil else{return}
    let db = Firestore.firestore()
    db.collection("Offers").whereField("documentID", isEqualTo: documentID)
        .whereField("offerStatus", isEqualTo: 1)
        .getDocuments { snapshot,error in
            guard error == nil else {
                print("error")
                return
            }

            guard let docs = snapshot?.documents else  {return}

            let alloffers = docs.map { doc -> Offers in
                let offer = Offers(dictionary: doc.data(), documentID: doc.documentID)
                
                return offer
              
            }
            //        let offerarr = Offers(dictionary: T##[String : Any])
            //
            //        self.offers.append(contentsOf: T##Sequence)


        }
}

    
func changeOfferStatus(documentID: String, status: OfferStatus){
    let db = Firestore.firestore()
    db.collection("Offers").document(documentID).updateData([
        "offerStatus": status.rawValue,
    ]) { err in
        if let err = err {
            print("Error updating document: \(err)")
        } else {
            print("Document successfully updated")
        }
    }
    
}

//func fetchData(orderID:String,status:Status.RawValue) {
//    let db = Firestore.firestore()
//    db.collection("Offers").whereField("orderID", isEqualTo: orderID).whereField("offerStatus", isEqualTo: 1).addSnapshotListener  (querySnapshot, error) in
//        guard let documents = querySnapshot?.documents else {
//            print("No documents")
//            return
//        }
//    offers = documents.map { (queryDocumentSnapshot) -> Offers in
//            let data = queryDocumentSnapshot.data()
//            let orderID = data["orderID"] as? String ?? ""
//            let providerID = data["providerID"] as? String ?? ""
//            let price = data["price"] as? String ?? ""
//        let offerStatus = data["offerStatus"] as? Status ?? ""
//            return Offers(
//        }
//    }

//            .addSnapshotListener({ snapshot, error in
//                guard let changes = snapshot?.documentChanges.filter({ $0.type == .added
//                })
//                else {return}
//
//                changes.forEach { change in
//                    let offres = change.document.data()
//                    let offer = Offers(dictionary: offres)
//                    self.fetchOrder(withId: offer.orderID) { order in
//                        self.offers.append(Offers(dictionary: offres))
//
//                    }
//                }


//
//            })
//      .getDocuments { snapshot, error in
//            guard error == nil else {
//                print("error")
//                return
//            }
//          guard let docs = snapshot?.documents else  {return}
//
//          let alloffers = docs.map { doc -> String in
//              let offer = Offers(
//              (dictionary: doc.data())
//
//              return offer.orderID
//          }
//
//
//}



//          self.fetchOrderProvider(userIds: allUserIds) { allUsers in


//              for doc in docs {
//                  let data = doc.data()
//                  let docID = doc.documentID // orderID
//                  let isProvider = data["isprovider"] as? Bool ?? false
//
//
//                  let order = Order(dictionary: data)
//                  print(order.city,"🌿")
//
//                  //print(isProvider)
//                  guard let user = allUsers[order.userID] else {continue}
//
//                  let orderForFeed = OrderForFeed(order: order, user: user , orderID: docID)
//                  print(orderForFeed.id.isEmpty)
//                  print(user.isprovider,"🌿🌷")
//
//            .addSnapshotListener { documentSnapshot, error in
//              guard let document = documentSnapshot else {
//                print("Error fetching document: \(error!)")
//                return
//              }
//              guard let data = document.data() else {
//                print("Document data was empty.")
//                return
//              }
//              print("Current data: \(data)")
//            }
//    }
//    func fechOrderProvider(userID:String,completion:@escaping(User)->()){}

//        Firestore.firestore().collection("user").document(userID).collection("Order").getDocuments { snapshot, _ in
//            guard let snapshot = snapshot else {
//                return
//            }
//            for doc in snapshot.documents{
//                let order = Order(dictionary: doc.data())
//                self.currentUserOrder.append(order)
//            }




//                guard let userData = snapshot?.data() else {
//                    return
//                }
//
//                let user = User(dictionary: userData)
//                print(user.fullName,"☘️")
//                print(user.isprovider)
//                completion(user)

//}
//}

//-------------------------------------------------

//private var db = Firestore.firestore()















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
//------------------------------------------------------------------------




//    }
    
    func getFeed(forfilter filter : OrderCustFilter) -> [OfferForFeed] {
        switch filter {
        case .Orders:
            return listOffers.filter({ item in
                return item.offer.offerStatus == .accepted
            })
        case .Offers:
            return listOffers.filter({ item in
                return item.offer.offerStatus == .new
            })
        }
    }
    
    

}

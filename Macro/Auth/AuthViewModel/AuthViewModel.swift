//
//  AuthViewModel.swift
//  Macro
//
//  Created by sumayah on 25/11/1443 AH.
//

import SwiftUI
import Foundation
import Firebase
import FirebaseAuth



final class AuthViewModel:ObservableObject{
//    @Published var userp = User(dictionary: [:])
//     var isAouthenticatting : Bool{
//         return Auth.auth().currentUser != nil
//    }
//    var isSignin : Bool{
//        return Auth.auth().currentUser != nil
//    }
    
    @Published var userSession : Bool = true
//    FirebaseAuth.User?
    @Published var isSignin : Bool = false

    @Published var isAouthenticatting : Bool = false

    @Published var user : User?
    @Published var order : [Order]?
    @Published var isLoading : Bool = false
    let users = "user"
    static let shared = AuthViewModel()
    //@Published var isProvider = false
    
//    init() {
//        //fetchUser()
//    }
    
        init() {
            self.userSession = (Auth.auth().currentUser != nil)
            
//            print("DEBUG: user is jjjj \(self.userSession?.uid)")

        }
   

func logInUser(email:String, password: String){
    self.showLoadingView()

print("DEBUD: Login eith email \(email)")
    

    Auth.auth().signIn(withEmail: email, password: password) { result, error in
        if let error = error{
            print("Faild to Login",error)
            self.hideLoadingView()
        }
        
        
//        guard let user = result?.user else{return}
//        self.userSession = user
//        print("DEBUG: user is \(self.userSession?.uid)")
        else{
            self.hideLoadingView()
            self.isSignin.toggle()
//            self.hideLoadingView()
            self.fetchUser()
//            self.fetchOrder()
//            print("sucsess log in \(result?.user.uid)")

        }
    }
}
//
//    func fetchOrder(){
//        guard let uid = Auth.auth().currentUser?.uid  else {return}
//        Firestore.firestore().collection("Order").addSnapshotListener{(querySnapshot ,error) in
//
//            guard let data = querySnapshot?.documents else{
//
//                return
//            }
//
//            self.order = data.map { (queryDocumentSnapshot) -> Order in
//                print("hh2")
//                print(queryDocumentSnapshot.data())
//                let userID = queryDocumentSnapshot.data()["userID"] as? String ?? ""
//                self.fetchUser(userId: userID)
//               /// self.user = User(dictionary: data)
//                return Order(dictionary: queryDocumentSnapshot.data())
//
//            }
//        }
//    }
////    func fetchUser(userId:String){
//////
//////        guard let uid = Auth.auth().currentUser?.uid  else {return}
//////        Firestore.firestore().collection("user").addSnapshotListener{(querySnapshot ,error) in
//////
//////            guard let data = querySnapshot?.documents else{
//////
//////                return
//////            }
//////
//////            self.user = data.map { (queryDocumentSnapshot) -> User in
//////                print("hh2")
//////                print(queryDocumentSnapshot.data())
//////               /// self.user = User(dictionary: data)
//////                return User(dictionary: queryDocumentSnapshot.data())
//////
//////            }
//////        }
//////
////
////        Firestore.firestore().collection("user").document(userId).getDocument { snapshot, _ in
////            guard let data = snapshot?.data() else{
////
////                return
////            }
////
////            self.user = User(dictionary: data)
////
////            print(self.user?.isprovider,"☘️")
////            print(self.user?.fullName)
//////            print(String(repeating: "\n", count: 10), "user is logged in")
//////            print(self.user)
////
////        }
////    }
    
    
    
    func fetchUser(){
        print("here","☘️")
        guard let uid = Auth.auth().currentUser?.uid  else {
            return
        }
        print(String(repeating: "\n", count: 10), "user is logged in")

        Firestore.firestore().collection("user").document(uid).getDocument { snapshot,error in
            if let error = error{
                print(error)
                return
            }
            guard let userData = snapshot?.data() else {return}
            self.user = User(dictionary: userData)

//            print(self.user?.fullName,"☘️")
            print("from fetch fuunch ")

        }


    }

    func handleSignout(){
        try? Auth.auth().signOut()
        print("sucsess log out")
        self.isAouthenticatting.toggle()
//        self.user = nil
//        userSession = nil
    }
    
    
    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}
    
}

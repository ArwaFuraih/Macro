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
    
    @State var showHome :Bool = false

    
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
//        RegistrationViewModel.x()
       
        try? Auth.auth().signOut()
        print("sucsess log out")
        self.isAouthenticatting.toggle()
        self.user = nil
//        userSession = nil
    }
    
    
    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}
    
}

//
//  AuthViewModel.swift
//  Macro
//
//  Created by sumayah on 25/11/1443 AH.
//

import Foundation
import Firebase
import FirebaseAuth



final class AuthViewModel:ObservableObject{
//    @Published var userp = User(dictionary: [:])
//     var isAouthenticatting : Bool{
//         return Auth.auth().currentUser != nil
//    }
//    @Published var isSignin = true
    
    @Published var isAouthenticatting : Bool = false

    @Published var user : User?
    @Published var isLoading : Bool = false
    let users = "user"
    static let shared = AuthViewModel()
    
//    init() {
//        //fetchUser()
//    }
    
   

func logInUser(email:String, password: String){
//    self.showLoadingView()
    Auth.auth().signIn(withEmail: email, password: password) { result, error in
        if let error = error{
            print("Faild to Login",error)
//            self.hideLoadingView()
        }
        else{
            self.isAouthenticatting.toggle()
//            self.hideLoadingView()
            self.fetchUser()
            print("sucsess log in \(result?.user.uid)")
           
        }
    }
}
    
    
    func fetchUser(){
        guard let uid = Auth.auth().currentUser?.uid  else {return}
        Firestore.firestore().collection(users).document(uid).getDocument { snapshot, _ in
            guard let data = snapshot?.data() else{
                print("No data")
                return
            }
            self.user = User(dictionary: data)
//            print(String(repeating: "\n", count: 10), "user is logged in")
//            print(self.user)

        }
    }
    
    
    
//    func fetchUser(){
//        guard let uid = Auth.auth().currentUser?.uid  else {
//            return
//        }
//        print(String(repeating: "\n", count: 10), "user is logged in")
//
//        Firestore.firestore().collection("user").document(uid).getDocument { snapshot,error in
//            if let error = error{
//                print(error)
//                return
//            }
//            guard let userData = snapshot?.data() else {return}
//            self.user = User(dictionary: userData)
//
//            print(self.user)
//            print("from fetch fuunch ")
//
//        }
//
//
//    }

    func handleSignout(){
        try? Auth.auth().signOut()
        print("sucsess log out")
        self.isAouthenticatting.toggle()
        self.user = nil
    }
    
    
    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}
    
}

//
//  AuthViewModel.swift
//  Macro
//
//  Created by sumayah on 25/11/1443 AH.
//

import Foundation
import Firebase

final class AuthViewModel:ObservableObject{
    
    @Published var isAouthenticatting = false
    @Published var user : User?
    @Published var isLoading : Bool = false
    @Published var isprovider : Bool = false
    
    
    let users = "Users"
    static let shared = AuthViewModel()

func logInUser(email:String, password: String){
    self.showLoadingView()
    Auth.auth().signIn(withEmail: email, password: password) { result, error in
        if let error = error{
            print("Faild to Login",error)
            self.hideLoadingView()
        }
        
        else{
            print(Auth.auth().currentUser)
            print("sucsess log in \(result?.user.uid)")
//            print("sucsess log in \(result?.user.uid)")

            
//            self.hideLoadingView()
//            self.fetchUser()
            self.isAouthenticatting.toggle()
        }
    }
}
    
    
    
    
    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}

}

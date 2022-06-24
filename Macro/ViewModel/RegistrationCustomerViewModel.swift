//
//  RegistrationCustomerViewModel.swift
//  Macro
//
//  Created by sumayah on 25/11/1443 AH.
//

import Foundation
import Firebase
import FirebaseStorage
import SwiftUI
//only for customer
final class  RegistrationCustomerViewModel : ObservableObject{
    
    @Published var FullName : String = ""
    @Published var PhoneNumber : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var isShowingImagePicker = false
    @Published var isLoading : Bool = false
    static let shared = RegistrationCustomerViewModel()

    
    
//    @Published var isProvieder : Bool = true
//    var authViewModel = AuthViewModel.shared
//    let users = "Users"
    
     
    func isValidProfile()->Bool{
        guard !self.FullName.isEmpty
                ,!self.PhoneNumber.isEmpty
                ,!self.email.isEmpty
                ,!self.password.isEmpty
        else {return false}
        return true
    }
    
    
    func createUser(){
        
        guard isValidProfile() else {
            print("Invalid Profile")
            return
        }
        
        
        self.showLoadingView()
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            
            if let _ = error{
                print("Create Profile Failure")
                self.hideLoadingView()
                return
            }
            
            else{print("Successfully created user \( result?.user.uid ?? "")")}
            
        }
    }
    func storeUserInformation(userData:[String:Any]){
        guard let uid = Auth.auth().currentUser?.uid else { return  }
        Firestore.firestore().collection("User").document(uid).setData(userData) { error in
            if let error = error {
                print(error)
                return
            }
//            AuthViewModel.shared.fetchUser()
//            AuthViewModel.shared.isAouthenticatting.toggle()
        }
    }
    
    
    
    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}
      
}


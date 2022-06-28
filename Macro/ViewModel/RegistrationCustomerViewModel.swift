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
    @ObservedObject var authViewModel = AuthViewModel()
    
    @Published var FullName : String = ""
    @Published var phone : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var isShowingImagePicker = false
    @Published var isLoading : Bool = false
    static let shared = RegistrationCustomerViewModel()

    
     
    func isValidProfile()->Bool{
        guard !self.FullName.isEmpty
                ,!self.phone.isEmpty
                ,!self.email.isEmpty
                ,!self.password.isEmpty
        else {return false}
        return true
    }
    
    
    func createUser(){
        self.showLoadingView()
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error{
                print("Create Profile Failure\(error)")
                self.hideLoadingView()
                return
            }
            if let result = result{
                print("user has beem created \(result.user.uid)")
                
                guard let uid = Auth.auth().currentUser?.uid else { return  }

                var userData : [String:Any] = [:]
                userData[User.fullName] = self.FullName
                userData[User.email] = self.email
                userData[User.phone] = self.phone
                userData[User.id] = uid
                userData[User.isprovider] = false
                
    //            guard let uid = Auth.auth().currentUser?.uid else { return  }
                Firestore.firestore().collection("user").document(uid).setData(userData) { error in
                    if let error = error{
                        print("Create Profile Failure\(error)")
                        return
                        
                    }
                    self.authViewModel.fetchUser()
                    print("successfuly store user info")
                }

                
                return
            }
            
            
            
            
            
        }




//        var userData : [String:String] = [User.fullName:fullName
//                                          ,User.email:email
//                                          ,User.phone:phone]
        var userData : [String:Any] = [:]
        userData[User.fullName] = self.FullName
        userData[User.email] = self.email
        userData[User.phone] = self.phone

//        userData[User.id] = uid
        
            
      
        func storeUserInformation(userData:[String:Any]){  guard let uid = Auth.auth().currentUser?.uid else { return  }
            Firestore.firestore().collection("User").document(uid).setData(userData) { error in
                if let error = error{
                    print("error\(error)")
                    self.hideLoadingView()

                    return

                }
                
                print("successfully store user info")
            }

                
        }

          
        }
    
//    func storeUserInformation(userData:[String:Any]){
//        guard let uid = Auth.auth().currentUser?.uid else { return  }
//        Firestore.firestore().collection("User").document(uid).setData(userData) { error in
//            if let error = error {
//                print(error)
//                return
//            }
//            AuthViewModel.shared.fetchUser()
//            AuthViewModel.shared.isAouthenticatting.toggle()
//        }
//    }
//
    
    
    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}
      
}


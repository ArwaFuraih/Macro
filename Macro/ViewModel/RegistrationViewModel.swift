import Foundation
import Firebase
import FirebaseStorage
import SwiftUI

final class  RegistrationViewModel : ObservableObject{
    
    static let shared = RegistrationViewModel()
    
    @Published var FullName : String = ""
    @Published var phone : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var isShowingImagePicker = false
    @Published var isLoading : Bool = false
  //
    @Published var FlyingPermit : Int = 0
    @Published var DroneNumber : Int = 0
    @Published var NationalID : String = ""
//    @Published var FullName : String = ""
    @Published var PhoneNumber : String = ""
//    @Published var email : String = ""
//    @Published var password : String = ""
  
    
    @Published var DroneNumberAsString : String = ""
    @Published var FlyingPermitAsString : String = ""
//    @Published var NationalIDAsString : String = ""
    
    
//    @Published var isShowingImagePicker = false
//    @Published var isLoading : Bool = false
//    var authViewModel = AuthViewModel.shared
//    let users = "Users"
    
    
    func isValidProfile()->Bool{
        guard !self.FullName.isEmpty
                ,!self.PhoneNumber.isEmpty
                ,!self.email.isEmpty
                ,!self.password.isEmpty
                ,!self.DroneNumberAsString.isEmpty
                ,!self.DroneNumberAsString.isEmpty
                ,!self.FlyingPermitAsString.isEmpty
                ,!self.NationalID.isEmpty


        else {return false}

        return true
    }
    
    
 // create user
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
                    AuthViewModel.shared.fetchUser()

//                    AuthViewModel.shared.fetchUser(userId: uid)

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

    
    func createprovider(){

        guard isValidProfile() else {
            print("Invalid Profile")
            return
        }

        _ = Int(DroneNumberAsString) ?? 0
//        _ = Int(NationalIDAsString) ?? 0
        _ = Int(FlyingPermitAsString) ?? 0




        self.showLoadingView()
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error{
                print("Create Profile Failure\(error)")
                self.hideLoadingView()
                return
            }
            if let result = result {
                print("user has beem created \(result.user.uid)")
                guard let uid = Auth.auth().currentUser?.uid else { return  }
                var userData : [String:Any] = [:]
                userData[User.fullName] = self.FullName
                userData[User.email] = self.email
                userData[User.phone] = self.phone
                userData[User.DroneNumber] = self.DroneNumber
                userData[User.FlyingPermit] = self.FlyingPermit
                userData[User.NationalID] = self.NationalID

                userData[User.id] = uid
                userData[User.isprovider] = true
                
                Firestore.firestore().collection("user").document(uid).setData(userData) { error in
                    if let error = error{
                        print("Create Profile Failure\(error)")
                        return
                        
                    }
                    AuthViewModel.shared.fetchUser()

//                    AuthViewModel.shared.fetchUser(userId: uid)
                    print("successfuly store user info")
                }
                return
                
            }
            
    
        }
    }


    func storeUserInformation(userData:[String:Any]){

        guard let uid = Auth.auth().currentUser?.uid else { return  }

        Firestore.firestore().collection("user").document(uid).setData(userData) { error in
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

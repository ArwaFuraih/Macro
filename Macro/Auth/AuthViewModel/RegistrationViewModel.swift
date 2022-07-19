import Foundation
import Firebase
import FirebaseStorage
import SwiftUI
//import FirebaseAuth


final class  RegistrationViewModel : ObservableObject{
    
    @Published var didAuthenticateUser = false
    static let shared = RegistrationViewModel()
    
    @Published var FullName : String = AuthViewModel.shared.user?.fullName ?? ""
    @Published var phone : String = String(AuthViewModel.shared.user?.phone ?? 0)
    @Published var email : String =  AuthViewModel.shared.user?.email ?? ""
    @Published var password : String = ""
    @Published var isShowingImagePicker = false
    @Published var isLoading : Bool = false
    @Published var FlyingPermit : Int = 0
    @Published var DroneNumber : Int = 0
    @Published var NationalID : String = ""
//    @Published var PhoneNumber : String = ""
    @Published var DroneNumberAsString : String = ""
    @Published var FlyingPermitAsString : String = ""
//    @Published var NationalIDAsString : String = ""

//    @Published var isShowingImagePicker = false
//    @Published var isLoading : Bool = false
//    var authViewModel = AuthViewModel.shared
//    let users = "Users"
    
     func x(){
//        self.FullName = ""
//        self.phone = ""
//        self.email = ""
        
        self.FullName = ""
        self.phone  = ""
        self.email  = ""
        

    }
    
    
    func isValidProfile()->Bool{
        guard !self.FullName.isEmpty
                ,!self.phone.isEmpty
                ,!self.email.isEmpty
//                ,!self.password.isEmpty
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
                    self.didAuthenticateUser = true

                    print("successfuly store user info")
                }

                
                return
            }
            
    
            
        }

        var userData : [String:Any] = [:]
        userData[User.fullName] = self.FullName
        userData[User.email] = self.email
        userData[User.phone] = self.phone
            
      
        func storeUserInformation(userData:[String:Any]){  guard let uid = Auth.auth().currentUser?.uid else { return  }
            Firestore.firestore().collection("user").document(uid).setData(userData) { error in
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

        self.showLoadingView()
        
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
    
    
    func uploadProfileImage(_ image:UIImage){
        guard let uid = Auth.auth().currentUser?.uid else { return  }

        imageUploader.uploadImage(image: image) { profileImageUrl in
            Firestore.firestore().collection("user").document(uid).updateData(["profileImg":profileImageUrl]) { _ in
//                self.tempUserSession = self.UserSession
                print("DEBG:upload image")
            }
        }
        print("DEBG:upload image")
    }

    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}
      
}

import Foundation
import Firebase
import FirebaseStorage
import SwiftUI

final class  RegistrationViewModel : ObservableObject{
    @Published var FlyingPermit : Int = 0
    @Published var DroneNumber : Int = 0
    @Published var NationalID : Int = 0
    @Published var FullName : String = ""
    @Published var PhoneNumber : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
  
    
    @Published var DroneNumberAsString : String = ""
    @Published var FlyingPermitAsString : String = ""
    @Published var NationalIDAsString : String = ""
    
    
    @Published var isShowingImagePicker = false
    @Published var isLoading : Bool = false
//    @Published var isProvieder : Bool = true
    

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

        else {return false}

        return true
    }
    
    
    func createUser(){
        
        guard isValidProfile() else {
            print("Invalid Profile")
            return
        }
        
        _ = Int(DroneNumberAsString) ?? 0
        _ = Int(NationalIDAsString) ?? 0
        _ = Int(FlyingPermitAsString) ?? 0


        
        
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

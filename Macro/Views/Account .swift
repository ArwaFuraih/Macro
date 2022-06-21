//
//  SwiftUIViewCreate Account.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 08/11/1443 AH.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift
import Contacts

    struct Account: View {
//        @State private var stringOfTextField0: String =  String()
//        @State private var stringOfTextField1: String =  String()
//        @State var showSheet = false
//        var body: some View {
//struct ContentView: View {
    @State private var stringOfTextField0: String =  String()
    @State var showSheet = false

    @State var isShowingHomeView: Bool = false
    @State var phoneNumber: String = ""
    @State var smsCode: String = ""
    @StateObject var authManager = AuthManager()
    var body: some View {

NavigationView{
            VStack{
                Spacer()
                VStack(alignment: .leading, spacing: 10){
                   

    Text("Full  Name")
    TextField("Ahmad Ali  ", text: $stringOfTextField0)
                    .padding()
.overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }
                    .padding()

                VStack(alignment: .leading, spacing: 10){
    Text("Phone Number")
    TextField("+9664488668  ", text:  $phoneNumber)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }

//                    ZStack{
                    HStack{
                        Image(systemName:"checkmark.square")
                       Text(" agree with  and Privacy")
                        .font(.system(size: 16))
                        
                        
    Button {
    showSheet.toggle()
    } label: {
    Text("Terms").underline().foregroundColor(.blue)
        Text("and")                .foregroundColor(.white)

    Text("Privacy").underline().foregroundColor(.blue)
    }.fullScreenCover(isPresented: $showSheet, content: {
    PrivacyPolicy()
    })
    }
//    }
               
//                    .padding()
                     Spacer()
//                ZStack{
//Button { AuthManager.createAccountWithPhoneNumber (phoneNumber: phoneNumber) {isSuccess in
//    print ("DEBUG: phone \(isSuccess)")
//                    
//}
//    isShowingHomeView.toggle()
//
//}
                
                NavigationLink{
                    Verification()
                   // Verification()
                } label: {
                    Button {
                        authManager.createAccountWithPhoneNumber(phoneNumber: phoneNumber) {isSuccess in
                            print ("DEBUG: phone \(isSuccess)")
                        }
                        isShowingHomeView.toggle()
                    } label: {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 342, height: 41.31)
                            .cornerRadius(8)
                            .background(Color("btnColor"))
                            .cornerRadius(8)
                    }

                    
                }

//                NavigationLink(destination: { Verification() }, label: {
//                    Button (action: {
//                        authManager.createAccountWithPhoneNumber(phoneNumber: phoneNumber) {isSuccess in
//                            print ("DEBUG: phone \(isSuccess)")
//                        }
//                        isShowingHomeView.toggle()
//
//                    }, label:{
//                        Text("Sign Up")
//                            .foregroundColor(.white)
//                            .bold()
//                            .frame(width: 342, height: 41.31)
//                            .cornerRadius(8)
//                            .background(Color("btnColor"))
//                            .cornerRadius(8)
//                    })
//                })
               
                    
//                }
                
                HStack{
                Text("Already have an account ? ")
                Button(" Sign In") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                }
//                .padding()
                 Spacer()


                }
            .padding(.top,-100)
}
       
        
                .navigationTitle("Create Account")
                .navigationBarTitleDisplayMode(.inline)
    }
            
    }
    
    
struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
            .preferredColorScheme(.dark)
    }
}
    
class AuthManager: ObservableObject {
    @Published var verificationId: String?
    let auth = Auth.auth()
    
func createAccountWithPhoneNumber(phoneNumber: String, completion: @escaping ( (Bool) -> () )) {
    let phoneNumber = "+966" + phoneNumber
    PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber , uiDelegate: nil) { verificationId , error in
        if let error = error {
            print("Erro while getting sms code")
            return
        }
        self.verificationId = verificationId
        completion(true)
}
}
    
    func verifySMSCode(verificationCode: String, phoneNumber: String,completion: @escaping ( (Bool) -> () )) {
        
        guard let verificationId = verificationId else {return}
let credential = PhoneAuthProvider.provider ().credential(withVerificationID : verificationId,verificationCode:verificationCode)
        
        
        auth.signIn (with :credential) { authResult, error in
if let error = error {
                print("DEBUG: 6 - Successfully Uploaded user info to firebase with saved phone number")
                guard let authResult = authResult else {return}
let userId = authResult.user.uid
let userData = [
        "id": userId,
        "phoneNumber": phoneNumber
                ]
    Firestore.firestore().collection("user").document(userId).setData(userData)
      completion(true)
            }
 
                
}
}
    
    
}

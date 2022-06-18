//
//  AuthManger.swift
//  Macro
//
//  Created by sumayah on 17/11/1443 AH.
//

//
//import FirebaseAuth
//import Foundation
//
//class  AuthManger{
//    static let shared = AuthManger()
//    private let auth = Auth.auth()
//    private var verificationId:String?
//    
//    public func startAuth(phoneNumber:String , completion:@escaping (Bool) -> Void){
//        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil){
//            [weak self]verificationId,error in
//            guard let verificationId = verificationId ,error == nil else{
//                completion(false)
//                return
//            }
//            self?.verificationId=verificationId
//            completion(true)
//            
//        }
//    }
//    
//    public func verifyCode(smsCode:String , completion:@escaping (Bool) -> Void){
//        guard let verificationId = verificationId else {
//            completion(false)
//            return
//        }
//
//        
//        let credential = PhoneAuthProvider.provider().credential(
//            withVerificationID: T##String,
//            verificationCode: smsCode
//        )
//        
//        auth.signIn(with: credential){result,error in
//            guard result != nil,error==nil else {
//                completion(false)
//                return
//            }
//            completion(true)
//            
//        }
//        
//    }
//    
//}

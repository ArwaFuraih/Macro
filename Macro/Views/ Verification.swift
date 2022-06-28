////
////   Verification.swift
////  Macro
////
////  Created by تهاني حامد عاطي الثقفي  on 12/11/1443 AH.
////
//
//import SwiftUI
//
//struct  Verification: View {
//    @State var phoneNumber: String = ""
//    @State var smsCode: String = ""
//    @StateObject var authManager = AuthManager()
//    @State var isShowingHomeView: Bool = false
//
//    var body: some View {
//       
//        NavigationView{
//           
////            VStack(alignment: .leading, spacing: 10){
//////                    Section{
////
//////                        Spacer()
////                        Text("Get Your Code")
////                            .fontWeight(.bold)
////                            .font(.system(size: 24))
////                            .padding()
//////                    }
//////                    Section{
////                    Text("Please enter the 4 digit code sent to your  phone number")
//////                    }
////                        .padding()
////
////                        HStack(spacing:10){
////                        ZStack{
////                            Image("")
////                .resizable()
////                .aspectRatio(contentMode:.fit)
////                .padding().background(Color.them.myColor2)
////                .cornerRadius(8)
////                .frame(width: 65.82, height: 81.93)
////                Text("5")
////                .foregroundColor(.white)
////                    }
////                        .padding()
////
////                        Section{
////                        ZStack{
////                            Image("")
////                            .resizable()
////                            .aspectRatio(contentMode:.fit)
////                            .padding().background(Color.them.myColor2)
////                            .cornerRadius(8)
////                        .frame(width: 65.82, height: 81.93)
////                        Text("4")
////                        .foregroundColor(.white)
////                        }
////                        .padding()
////                        Section{
////                        ZStack{
////                            Image("")
////                            .resizable()
////                            .aspectRatio(contentMode:.fit)
////                            .padding().background(Color.them.myColor2)
////                            .cornerRadius(8)
////                        .frame(width: 65.82, height: 81.93)
////                        Text("8")
////                        .foregroundColor(.white)
////                            }
////                        .padding()
////                         ZStack{
////                             Image("")
////                             .resizable()
////                             .aspectRatio(contentMode:.fit)
////                        .padding()
////                        .background(Color.them.myColor2)
////                             .cornerRadius(8)
////                         .frame(width: 65.82, height: 81.93)
////                        Text("6")
////                        .foregroundColor(.white)
//////                              .padding()
////                         }
////                         .padding()
////
////                        }
////                        }
//////                                                 }
////                        }
//////                            Section{
////                        HStack{
////                        Text("Already have an account ? ")
////                        Button(" Resend") {
////
////                                 }
////
////                                 }
////                        .padding(.top,-39)
////
////
//////                            }
////                                        .padding()
////
////                            Section{
////                            ZStack{
////
////    Button (action: {
////authManager.createAccountWithPhoneNumber(phoneNumber: phoneNumber) {isSuccess in
////            print ("DEBUG: phone \(isSuccess)")
////                        }
////            isShowingHomeView.toggle()
////
////            }, label:{
////            Text("Verify and Proceed")
////                    .foregroundColor(.white)
////                    .bold()
////                    .frame(width: 342, height: 41.31)
////                    .cornerRadius(8)
////                    .background(Color("btnColor"))
////                    .cornerRadius(8)
////
////                            })
////
////                            }
////                                    .padding()
////
////                            }
////
////                            }
//            
//            
//            VStack(alignment: .leading, spacing: 10){
//               
//
//Text("Get Your Code")
//                    .bold()
//                    .padding()
//                    .font(.system(size: 20))
//
//Text("Please enter the 5 digit code sent to your  phone number")
//
//TextField("                           XXXXX ", text: $smsCode)
//                .padding()
//.overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
//                .frame(width: 342.15, height: 114.86)
////                .padding()
//                
//Button (action: {
//    DispatchQueue.main.async {
//
//authManager.verifySMSCode(verificationCode: smsCode, phoneNumber: phoneNumber) { isSuccess in
//                print ("DEBUG: phone \(isSuccess)")
//             isShowingHomeView.toggle()
//        
//            }
//}
//    //                .padding()
//
//        }, label:{
//            Text("Verify and Proceed")
//                .foregroundColor(.white)
//                .bold()
//                .frame(width: 342, height: 41.31)
//                .cornerRadius(8)
//                .background(Color("btnColor"))
//                .cornerRadius(8)
//        })
//            }
//            
//            .padding(.trailing,10)
//                .padding(.leading,10)
////    })
//        
//        
//
//
//                            
//                        }
//                .padding(.top,-270)
////                        }
////
//        .navigationTitle("Phone Auth")
//        .fullScreenCover(isPresented: $isShowingHomeView) {
//                Text("You are Good to go ")
//               }
//
////        .navigationTitle("Verification")
////        .navigationBarTitleDisplayMode(.inline)
////            }
////            }
//               }
//}
//    struct   Verification_Previews: PreviewProvider {
//    static var previews: some View {
//        Verification()
//       .preferredColorScheme(.dark)
//    
//    }
//}
//
////func verifySMSCode(verificationCode: String, phoneNumber: String,completion: @escaping ( (Bool) -> () )) {
////    
////    guard let verificationId = verificationId else {return}
////let credential = PhoneAuthProvider.provider ().credential(withVerificationID : verificationId,verificationCode:verificationCode)
////
////
////}

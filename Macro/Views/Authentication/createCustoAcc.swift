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

    struct createCustoAcc: View {
//        @EnvironmentObject var viewModel : RegistrationViewModel
        @StateObject var registrationViewModel: RegistrationViewModel = RegistrationViewModel()
        
        @State var email : String = ""
        @State var password : String = ""
        @State var showHome :Bool = false
        @State var  showTerms :Bool = false
        @State var showLoginView :Bool = false
       
//
//        @State var fullName : String = ""
//    @State var phoneNumber: String = ""
//    @State var smsCode: String = ""
    var body: some View {

        ZStack {
                Color.them.myColor1.ignoresSafeArea()
                
            VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 10){
                       

    //    Text("Full  Name")
    //    TextField("Ahmad Ali  ", text: $fullName)
    //                    .padding()
    //.overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
    //                    .frame(width: 342.15, height: 66.86)
                        
                        Text("Email:")
                        TextField("ex@gmail.com"  , text: $email)
                                        .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                                        .frame(width: 342.15, height: 66.86)
                    }
                        .padding()
                    
                    

                    VStack(alignment: .leading, spacing: 10){
    //    Text("Phone Number")
    //    TextField("+9664488668  ", text:  $phoneNumber)
    //                    .padding()
    //                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
    //                    .frame(width: 342.15, height: 66.86)
                        
                      
                             Text("Password:")
                        TextField("******* ", text: $password)
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
        showTerms.toggle()
        } label: {
        Text("Terms").underline().foregroundColor(.blue)
            Text("and")                .foregroundColor(.white)

        Text("Privacy").underline().foregroundColor(.blue)
        }.fullScreenCover(isPresented: $showTerms, content: {
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
                    
                    
                    
                    
                    
                    
                    Button {
    //                    guard !email.isEmpty, !password.isEmpty else {return}
    //                    viewModel.logInUser(email: email, password: password)
                                         showHome.toggle()
                        registrationViewModel.createUser()
                    } label: {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 342, height: 41.31)
                            .cornerRadius(8)
                            .background(Color("btnColor"))
                            .cornerRadius(8)
                    }
                    .fullScreenCover(isPresented: $showHome, content: {MyTab()})
                    

                    
                    HStack{
                    Text("Already have an account ? ")
                    Button(" Sign In") {
                        showLoginView.toggle()
                    }
                    } .fullScreenCover(isPresented: $showLoginView, content: {loginView()})
    //                .padding()
                     Spacer()


                    }
                .padding(.top,-100)

           
            
                    .navigationTitle("Create Account")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
            
    }
    
    
struct Account_Previews: PreviewProvider {
    static var previews: some View {
        createCustoAcc()
            .preferredColorScheme(.dark)
    }
}
    


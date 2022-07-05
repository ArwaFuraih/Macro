//
//  loginView.swift
//  Macro
//
//  Created by sumayah on 25/11/1443 AH.
//

import SwiftUI
import FirebaseAuth
import Firebase

// Auth.auth().currentUser?//.uid
struct loginView: View {
    @EnvironmentObject var viewModel : AuthViewModel
    @EnvironmentObject var registrationViewModel : RegistrationViewModel

//    @ObservedObject var viewModel = AuthViewModel()
    @State var email : String = ""
    @State var password : String = ""
    @State var showHome :Bool = false
    @State var showAcoountView :Bool = false
    @State var  showTerms :Bool = false

   
    

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
                        
                        Text("Email:") .foregroundColor(.gray)
                        TextField("ex@gmail.com"  , text: $email) .foregroundColor(.gray)
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
                        
                      
                             Text("Password:") .foregroundColor(.gray)
                        TextField("******* ", text: $password) .foregroundColor(.gray)
                                        .padding()
                                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                                        .frame(width: 342.15, height: 66.86)
                        
                        
                        
                    }

    //                    ZStack{
                        HStack{
                            Image(systemName:"checkmark.square") .foregroundColor(.gray)
                           Text(" agree with  and Privacy") .foregroundColor(.gray)
                            .font(.system(size: 16))
                            
                            
        Button {
        showTerms.toggle()
        } label: {
        Text("Terms").underline().foregroundColor(.blue)
            Text("and") .foregroundColor(.white) .foregroundColor(.gray)

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
                        viewModel.logInUser(email: email, password: password)
                        
                    } label: {
                        Text("Sign In")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 342, height: 41.31)
                            .cornerRadius(8)
                            .background(Color("btnColor"))
                            .cornerRadius(8)
                    }
                    .fullScreenCover(isPresented: $showHome, content: {MyTab()})
                    

                    
                HStack(alignment: .center, spacing: -10){
                    Text("Already have an account ? ") .foregroundColor(.gray)
                            .padding(.leading, 79)
                        Button {
                            showAcoountView.toggle()
                        } label: {
                            Text("Sign up").foregroundColor(.blue)
                        }.fullScreenCover(isPresented: $showAcoountView, content: {createCustoAcc()})
                    .padding()
                     Spacer()


                    }
                

           Spacer()
            
                    .navigationTitle("Create Account") .foregroundColor(.gray)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
    }
}
struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }

    }

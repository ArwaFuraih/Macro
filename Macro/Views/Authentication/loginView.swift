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
//    @ObservedObject var viewModel = AuthViewModel()
    @State var email : String = ""
    @State var password : String = ""
    @State var showHome :Bool = false

    var body: some View {
        
        VStack{
            Spacer()
            VStack(alignment: .leading, spacing: 10){
                

                     VStack(alignment: .leading, spacing: 10){
                            Text("Email:")
                            TextField("Email ", text:  $email)
                                            .padding()
                                .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                                .frame(width: 342.15, height: 66.86)
                         
                         Text("Password:")
                         TextField("Password", text:  $password)
                                         .padding()
                             .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                             .frame(width: 342.15, height: 66.86)
            }
                
                
                Button {
//                    guard !email.isEmpty, !password.isEmpty else {return}
                    viewModel.logInUser(email: email, password: password)
                    showHome.toggle()
                } label: {
                    Text("Login")
                        .font(.headline)
                        .frame(width: 360, height: 50)
                        .background(Color.red)
                        .clipShape(Capsule())
                        .padding()
                }
                .fullScreenCover(isPresented: $showHome, content: {MyTab()})
                Spacer()

//                    ZStack{
                HStack{
                    Image(systemName:"checkmark.square")
                   Text(" agree with  and Privacy")
                    .font(.system(size: 16))
                    
                    
                    
                    
                    
                    
                    
                    
//
//                    Button {
//                        showSheet.toggle()
//                        }
//                    label: {
//                    Text("Terms").underline().foregroundColor(.blue)
//                        Text("and")                .foregroundColor(.white)
//
//                    Text("Privacy").underline().foregroundColor(.blue)
//                    }.fullScreenCover(isPresented: $showSheet, content: {
//                    PrivacyPolicy()
//                    })
//                    }
//    }
           
//                    .padding()
                 Spacer()
//
            HStack{
            Text("Already have an account ? ")
            Button(" Sign In") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            }
//                .padding()
             Spacer()


            }

    }
}
    }
}
struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }

    }

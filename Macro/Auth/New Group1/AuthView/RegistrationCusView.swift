//
//  RegistrationCusView.swift
//  Macro
//
//  Created by sumayah on 13/12/1443 AH.
//

import SwiftUI

struct RegistrationCusView: View {
    @StateObject var registrationViewModel: RegistrationViewModel = RegistrationViewModel()
    //    @EnvironmentObject var m :RegistrationViewModel
    
    
    
    
    
    @State var fullName : String = ""
    @State var email : String = ""
    @State var password : String = ""
    @State var phone : String = ""
    @State   var checkbox1: Bool = false
    
    
    
    
    
    @State var showHome :Bool = false
    @State var  showTerms :Bool = false
    @State var showLoginView :Bool = false
    
    @Environment(\.presentationMode) var mode
    
    
    var body: some View {
        NavigationLink(destination: ProfileView(), isActive: $registrationViewModel.didAuthenticateUser,
                       label: {})
        ZStack{
            Color.them.myColor1.ignoresSafeArea()
            VStack{
                
                
                
                
                customTextField(placeholder: "Ahmad Ali", title: "full name", text: $registrationViewModel.FullName)
            
                customTextField(placeholder: "ex@gmail.com", title: "Email:", text: $registrationViewModel.email)
                
                //                customTextField(placeholder: "+9664488668 ", title: "Phone Number:", text: $phone)
                customTextField(placeholder: "+9664488668 ", title: "Phone Number:", text: $registrationViewModel.phone)
                
                //                customTextField(placeholder: "*********", title: "Password:", text: $password)
                customTextField(placeholder: "*********", title: "Password:", isSecureField:true, text: $registrationViewModel.password)
                
                HStack{
                    VStack{
//                        Toggle(isOn: $checkbox1) {
//                            Text("first condtion")
//                        }
//                        .toggleStyle(CheckBoxToggleStyle(isreversed: true))
//                        Text(" agree with  and Privacy")
//                            .foregroundColor(.gray)
//                            .font(.system(size: 12))
                        
                        
                        Button {
                            showTerms.toggle()
                        } label: {
                            HStack(alignment: .center){
                                
                                Text("Terms").underline().foregroundColor(.blue)
                                Text("and") .foregroundColor(.gray)
                                Text("Privacy").underline().foregroundColor(.blue)
                            }
                            
                        }.fullScreenCover(isPresented: $showTerms, content: {
                            PrivacyPolicy()
                        }).padding(.vertical,10)
                    }
                    
                    
                    
                    Spacer()
                    
                    
                    Button {
                        
                        //                    registrationViewModel.createUser()
                        //                    guard !email.isEmpty, !password.isEmpty else {return}
                        //                    viewModel.logInUser(email: email, password: password)
                        showHome.toggle()
                        registrationViewModel.createUser()
                        //                        registrationViewModel.createprovider()
                    } label: {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 342, height: 41.31)
                            .cornerRadius(8)
                            .background(Color("btnColor"))
                            .cornerRadius(8)
                            .padding(.vertical,10)
                    }
                    .fullScreenCover(isPresented: $showHome, content: {MyTab()})
                    
                    
                    HStack{
                        Text("Already have an account ? ") .foregroundColor(.gray)
                        Button(" Sign In") {
                            showLoginView.toggle()
                        }
                    } .fullScreenCover(isPresented: $showLoginView, content: {loginView()})
                    //                .padding()
                    
                }.padding()
            }
            
        }
            
            
        }
    }
    struct CheckBoxToggleStyle: ToggleStyle{
        var isreversed = false
        @State private var checkbox2: Bool = false
        
        func makeBody(configuration: Configuration) -> some View {
            HStack{
                if !isreversed {
                    configuration.label
                }
                Button {
                    configuration.isOn.toggle()
                }
            label:{
                Image(systemName: configuration.isOn ? "checkmark.square": "square")
            }
            .padding(5)
            .font(.body)
            .foregroundColor(.white)
                if isreversed{
                    configuration.label
                }
            }
        }
    }
    struct RegistrationCusView_Previews: PreviewProvider {
        static var previews: some View {
            RegistrationCusView()
        }
    }

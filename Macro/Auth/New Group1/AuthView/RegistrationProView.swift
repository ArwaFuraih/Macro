//
//  RegistrationProView.swift
//  Macro
//
//  Created by sumayah on 13/12/1443 AH.
//

import SwiftUI

struct RegistrationProView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    @StateObject var registrationViewModel: RegistrationViewModel = RegistrationViewModel()
    
    
    @State private var checkbox1: Bool = false

    @State var fullName : String = ""
    @State var email : String = ""
    @State var password : String = ""
    @State var phone : String = ""
    @State var NationalID : String = ""
    @State var DroneNumber : String = ""
    @State var FlyingPermit : String = ""
    
    @State var showHome :Bool = false
    @State var  showTerms :Bool = false
    @State var showLoginView :Bool = false
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.them.myColor1.ignoresSafeArea()
        ScrollView{
            
           
                VStack{
                    
                    customTextField(placeholder: "Ahmad Ali", title: "full name", text: $registrationViewModel.FullName)
                    
                    customTextField(placeholder: "ex@gmail.com", title: "Email:", text: $registrationViewModel.email)
                    
                    customTextField(placeholder: "+9664488668 ", title: "Phone Number:", text: $registrationViewModel.phone)
                    customTextField(placeholder: "11202220", title: "National ID", text: $registrationViewModel.NationalID)
                    customTextField(placeholder: "11202220", title: "Flying Permit", text: $registrationViewModel.FlyingPermitAsString)
                    customTextField(placeholder: "11202220", title: "Drone Number", text: $registrationViewModel.DroneNumberAsString)
//                    customTextField(placeholder: "*********", title: "Password:", text: $registrationViewModel.password,isSecureField:true)
                
                    
                    VStack{
                        
                   
                        
                        
                        
                        
                    
                    HStack{
                   
                        HStack{
                                    Toggle(isOn: $checkbox1) {
                                      
                                    }
                                    .toggleStyle(CheckBoxToggleStyle(isreversed: true))
                                 }
                        
                        
                        Button {
                            showTerms.toggle()
                        } label: {
                            HStack(alignment: .center){
                                Text("I agree with") .foregroundColor(.gray)

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
    //                    guard !email.isEmpty, !password.isEmpty else {return}
    //                    viewModel.logInUser(email: email, password: password)
    //                                         showHome.toggle()
                        registrationViewModel.createprovider()
    //                        registrationViewModel.createprovider()
                    } label: {
                        Text("Become a Drone Owner")
                        
                            .foregroundColor(.white)
                           .bold()
                           .frame(width: 342, height: 41.31)
                           .cornerRadius(8)
                           .background(Color("btnColor"))
                           .cornerRadius(8)
                    }
                        .fullScreenCover(isPresented: $showHome, content: {MyTab()})
                        
                        
                        
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Text("Cancel")
                                .foregroundColor(.white)
                                .bold()
                                .frame(width: 342, height: 41.31)
                                .cornerRadius(8)
                                .background(Color("btnColor"))
                                .cornerRadius(8)
                         .frame(maxWidth:.maximum(80,699),alignment:.center)

                    
                        }}
            
      
            
            
            
                }.padding()
            
        
        }
       
        }
            .navigationTitle("Become a Drone Owner")
           .navigationBarTitleDisplayMode(.inline)
        }
    
}
}
struct RegistrationProView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationProView()
    }
}

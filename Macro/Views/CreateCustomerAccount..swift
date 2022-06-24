//
//  CreateCustomerAccount..swift
//  Macro
//
//  Created by sumayah on 25/11/1443 AH.
//

import SwiftUI
struct CreateCustomerAccount: View {
    @EnvironmentObject var registerationCustomerViewModel : RegistrationCustomerViewModel
    
        @State var showSheet: Bool = false
        @State var showSheet2: Bool = false
        var body: some View {
            
            NavigationView{
                
                ScrollView{
                    
                VStack{
                    
                    VStack(alignment: .leading, spacing: 10){
                        Text("Full Name")
                        TextField("", text: $registerationCustomerViewModel.FullName)
                        .padding()
    //                    .foregroundColor(Color.white)
                       .overlay(RoundedRectangle(cornerRadius: 8.0)
                       .strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }
    //                    .padding()
                    VStack(alignment: .leading, spacing: 10){
                        Text("Phone Number")
                        TextField("", text: $registerationCustomerViewModel.PhoneNumber)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }
                    VStack(alignment: .leading, spacing: 10){
                        Text("Email")
                        TextField("", text: $registerationCustomerViewModel.email)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }
                    
                    VStack(alignment: .leading, spacing: 10){
                        Text("Password")
                        TextField("", text: $registerationCustomerViewModel.password)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }
                    
                    
                    
    //                                .padding()
                    ZStack{
                    HStack{
                        Image(systemName:"checkmark.square")
                       Text(" agree with and Privacy")
                        
//                        NavigationLink(destination: PrivacyPolicy()) {
//                            Text("Terms").underline().foregroundColor(.blue)
//                            Text("and")
//                            Text("Privacy").underline().foregroundColor(.blue)
//                        }
                        Button {
                            registerationCustomerViewModel.createUser()
                            
//                            showSheet.toggle()
                        } label: {
                            Text("Terms").underline().foregroundColor(.blue)
                            Text("and")
                            Text("Privacy").underline().foregroundColor(.blue)
                        }.fullScreenCover(isPresented: $showSheet, content: {
                            PrivacyPolicy()
                        })
                       
                    }
                    }
                    .padding(.top,-4)
    //                    .padding()
    //                     Spacer()
                    ZStack{
                        Button(action:{showSheet2.toggle()}){
                        Text("Sign Up")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 342, height: 41.31)
                        .cornerRadius(8)
                        .background(Color("btnColor"))
                        .cornerRadius(8)
                    }
                    .padding(.top,51)
                    .fullScreenCover(isPresented: $showSheet2, content: {
                        HomeView()
                    }
    //
                )}
                .padding(.top,-20)
                    
    //    }
            .navigationTitle("Create Account")
            .navigationBarTitleDisplayMode(.inline)
            }
            }
    }
    }
}
struct CreateCustomerAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateCustomerAccount()
            .preferredColorScheme(.dark)
    }
}

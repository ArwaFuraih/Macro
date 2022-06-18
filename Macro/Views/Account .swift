//
//  SwiftUIViewCreate Account.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 08/11/1443 AH.
//

import SwiftUI
    struct Account: View {
//        @StateObject var loginData = LoginViewModel()
        @State private var stringOfTextField: String =  String()
        
        var body: some View {
        NavigationView{
            VStack{
//                padding(.top)
                Spacer()
                VStack(alignment: .leading, spacing: 10){
                   

                    Text("Full  Name")
                    TextField("Ahmad Ali  ", text: $stringOfTextField)
                    .padding()
.overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }
                    .padding()

                VStack(alignment: .leading, spacing: 10){
                    Text("Phone Number")
                    TextField("+9664488668  ", text: $stringOfTextField)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }
//                .padding()

//                ZStack{
//                HStack{
                    ZStack{
                    HStack{
                        Image(systemName:"checkmark.square")
    //                    .offset(x: -18, y: -69)
    //                    .frame(width: 55.0, height: 90.0)
                       Text(" agree with  and Privacy")
                        .font(.system(size: 16))
                        Button("Terms") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        Text("and")
                        Button("Privacy") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                }
                    }
               
//                    .padding()
                     Spacer()
                ZStack{
                Button(action:{}){
                    Text("Sign Up")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 342, height: 41.31)
                    .cornerRadius(8)
                    .background(Color("btnColor"))
                    .cornerRadius(8)
                }
                }
                HStack{
                Text("Already have an account ? ")
                Button(" Sign In") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                }
//                .padding()
                 Spacer()


                }
                .navigationTitle("Create Account")
                .navigationBarTitleDisplayMode(.inline)
            }
    }
    }
        
struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
            .preferredColorScheme(.dark)
    }
}
    
       

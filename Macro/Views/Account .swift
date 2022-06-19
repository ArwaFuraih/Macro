//
//  SwiftUIViewCreate Account.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 08/11/1443 AH.
//

import SwiftUI
    struct Account: View {
        @State private var stringOfTextField0: String =  String()
        @State private var stringOfTextField1: String =  String()
        @State var showSheet = false
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
    TextField("+9664488668  ", text: $stringOfTextField1)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }

                    ZStack{
                    HStack{
                        Image(systemName:"checkmark.square")
                       Text(" agree with  and Privacy")
                        .font(.system(size: 16))
                        
                        
                        Button {
                            showSheet.toggle()
                        } label: {
                            Text("Terms").underline().foregroundColor(.blue)
                            Text("and")
                            Text("Privacy").underline().foregroundColor(.blue)
                        }.fullScreenCover(isPresented: $showSheet, content: {
                            PrivacyPolicy()
                        })
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
            .padding(.top,-100)
       
        
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
    
       

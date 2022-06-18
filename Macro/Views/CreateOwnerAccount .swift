//
//  CreateOwnerAccount.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 14/11/1443 AH.
//

import SwiftUI
    struct CreateOwnerAccount : View {
        @State private var stringOfTextField: String =  String()
        var body: some View {
        NavigationView{
            VStack{
//                padding(.top)
//                Spacer()
                VStack(alignment: .leading, spacing: 10){
                   

                    Text("Full  Name")
                    TextField("Ahmad Ali  ", text: $stringOfTextField)
                    .padding()
.overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }
//                    .padding()

                VStack(alignment: .leading, spacing: 10){
                    Text("National ID")
                    TextField("2273377103  ", text: $stringOfTextField)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }
//                .padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Phone Number")
                    TextField("+96654776433", text: $stringOfTextField)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }
//                .padding()

                VStack(alignment: .leading, spacing: 10){
                    Text("Email")
                    TextField("ahmad@gmail.com  ", text: $stringOfTextField)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }
//                .padding()

                VStack(alignment: .leading, spacing: 10){
                    Text("Flying Permit")
                    TextField("#96iifd88668  ", text: $stringOfTextField)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }
//                .padding()

                VStack(alignment: .leading, spacing: 10){
                    Text("Drone Number")
                    TextField("296600088668  ", text: $stringOfTextField)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                    .frame(width: 342.15, height: 66.86)
                }
                

                ZStack{
                HStack{
                    Image(systemName:"checkmark.square")
                   Text(" agree with  and Privacy")
                    Button("Terms") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Text("and")
                    Button("Privacy") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                }
                }
                    .padding()
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
                
                .padding()



                }
                .navigationTitle("Create Account")
                .navigationBarTitleDisplayMode(.inline)
            }
    }
    }
struct CreateOwnerAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateOwnerAccount()
   
            .preferredColorScheme(.dark)
    }
}
    
    

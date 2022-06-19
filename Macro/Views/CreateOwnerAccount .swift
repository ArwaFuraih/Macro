//
//  CreateOwnerAccount.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 14/11/1443 AH.
//

import SwiftUI
    struct CreateOwnerAccount : View {
    @State private var stringOfTextField1: String =  String()
    @State private var stringOfTextField2: String =  String()
    @State private var stringOfTextField3: String =  String()
    @State private var stringOfTextField4: String =  String()
    @State private var stringOfTextField5: String =  String()
    @State private var stringOfTextField6: String =  String()
        @State var showSheet: Bool = false
        @State var showSheet2: Bool = false




        var body: some View {
           
                
            NavigationView{
                ScrollView{
                VStack{

                    VStack(alignment: .leading, spacing: 10){

                        Text("Full  Name")
        TextField("", text: $stringOfTextField1)
                        .padding()
    //                    .foregroundColor(Color.white)
    .overlay(RoundedRectangle(cornerRadius: 8.0)
                .strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }
    //                    .padding()

                    VStack(alignment: .leading, spacing: 10){
                        Text("National ID")
        TextField("", text: $stringOfTextField2)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }
    //                .padding()
                    VStack(alignment: .leading, spacing: 10){
                        Text("Phone Number")
        TextField("", text: $stringOfTextField3)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }
    //                .padding()

                    VStack(alignment: .leading, spacing: 10){
                        Text("Email")
    TextField("", text: $stringOfTextField4)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }
    //                .padding()

                    VStack(alignment: .leading, spacing: 10){
                        Text("Flying Permit")
    TextField("", text: $stringOfTextField5)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }

                    VStack(alignment: .leading, spacing: 10){
                        Text("Drone Number")
            TextField("", text: $stringOfTextField6)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                    }
                    
    //                                .padding()

                    ZStack{
                    HStack{
                        Image(systemName:"checkmark.square")
                       Text(" agree with  and Privacy")
                        
//                        NavigationLink(destination: PrivacyPolicy()) {
//                            Text("Terms").underline().foregroundColor(.blue)
//                            Text("and")
//                            Text("Privacy").underline().foregroundColor(.blue)
//                        }
                        
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

struct CreateOwnerAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateOwnerAccount()
   
            .preferredColorScheme(.dark)
    }
}
    
    
    }

//
//  HomeView.swift
//  Macro
//
//  Created by sumayah on 02/11/1443 AH.
//

import SwiftUI


    struct HomeView: View {
        @State private var fullName = ""
        @State private var phoneNumber = ""
        @State private var email = ""
        
    //        @FocusState private var focusedField: Field?
        var body: some View {
            
            NavigationView{
                VStack{
                    Form {
                        Section(header: Text("Full Name"))
                        {TextField("Ahmad Ali",text:$fullName )}
                        Section(header: Text("Phone Number"))
                        {TextField("+9664488668",text:$phoneNumber )}
                        Section(header: Text("Email"))
                        {TextField("ahmad@gmail.com",text:$email )}
                        
                        Button(action:{}){RoundedRectangle(cornerRadius: 8)
                                .frame(height:60)
                                .overlay(
                                Text("Sign Up"))
                        }.padding
                        
                        
                    }
                   
                    
                
            }.navigationTitle("Create Aocunt")
        }
    }

    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView{
                HomeView()

                
            }
        }
    }
    }

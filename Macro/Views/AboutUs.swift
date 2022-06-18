//
//  About Us.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 14/11/1443 AH.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        NavigationView{
            
            
            
            VStack(alignment: .leading, spacing: 15){
                Spacer()
                VStack{
        Text("We got the permit, and you got the fly!")
                    .fontWeight(.bold)
                    .font(.system(size: 24))

                }
                .padding()
                    Section{
        HStack(spacing:10){
        Image("About1")
        Text("All needs                                          ")
                .font(.system(size: 24))
        }
                        
                        VStack{
Text("If you want to get your services with ease, you will \n definitely have the Puter application,which collects\n the drone services that both the owner and user of\n the drones need.")
                                .font(.system(size: 14))
                    }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
        Image("About2")

        Text("Privacy")
                .font(.system(size: 24))
                }
                        
    Text("With high quality, satisfactory price and high \nguarantee, in cooperation with the competent \nauthorities for the Drones.")
        .font(.system(size: 14))

                        
                        
                        
        .padding()
                
        }
               
                Section{
        HStack(spacing:10){
        Image("About3")

        Text("  Customers service")
                .font(.system(size: 24))
        }
    Text("We are always ready to serve you in different ways\n and at any time.")
            .font(.system(size: 14))

        .padding()
                    }
                    Spacer()
               ZStack{
               Button(action:{}){
                   Text("Request")
                   .foregroundColor(.white)
                   .bold()
                   .frame(width: 342, height: 41.31)
                   .cornerRadius(8)
                   .background(Color("btnColor"))
                   .cornerRadius(8)
               
               }
                }
               .padding()
                Spacer()
                    
                    
        .navigationTitle("About Us")
        .navigationBarTitleDisplayMode(.inline)
    
}
    }
}
struct Argiculture_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
       .preferredColorScheme(.dark)

    }
}
}


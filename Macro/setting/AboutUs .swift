//
//  About Us.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 14/11/1443 AH.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
  //      NavigationView{
            
        ZStack{
            Color.them.myColor1.ignoresSafeArea()
            VStack{
                VStack(alignment: .leading, spacing: 15){
                    Spacer()
                    VStack{
            Text("We got the permit, and you got the fly!")
                            .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 18))

                    }
                    .padding()
                        Section{
            HStack(spacing:10){
            Image("About1")                            .foregroundColor(.white)

            Text("All needs                                          ")
                    .font(.system(size: 24))
            }
            .foregroundColor(.white)

                            
                            VStack{
    Text("If you want to get your services with ease, you will \n definitely have the Puter application,which collects\n the drone services that both the owner and user of\n the drones need.")                            .foregroundColor(.white)

                                    .font(.system(size: 14))
                        }
            .padding()
                    
            }
                        Section{
            HStack(spacing:10){
            Image("About2")
                    .foregroundColor(.white)

            Text("Privacy")                            .foregroundColor(.white)

                    .font(.system(size: 24))
                    }
                            
        Text("With high quality, satisfactory price and high \nguarantee, in cooperation with the competent \nauthorities for the Drones.")                            .foregroundColor(.white)

            .font(.system(size: 14))

                            
                            
                            
            .padding()
                    
            }
                   
                    Section{
            HStack(spacing:10){
            Image("About3")                            .foregroundColor(.white)


            Text("  Customers service")                            .foregroundColor(.white)

                    .font(.system(size: 24))
            }
        Text("We are always ready to serve you in different ways\n and at any time.")                            .foregroundColor(.white)

                .font(.system(size: 14))

            .padding()
                        }
                        Spacer()
                 
                   
                   
                        
           .navigationTitle("About Us")                            .foregroundColor(.white)

            .navigationBarTitleDisplayMode(.inline)
        
    //}
        }
            }}
            
           
}
struct Argiculture_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
       .preferredColorScheme(.dark)

    }
}
}


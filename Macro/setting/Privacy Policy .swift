//
//  Privacy Policy.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 13/11/1443 AH.
//


import SwiftUI
struct PrivacyPolicy: View {
   var body: some View {
       ZStack{
           Color.them.myColor1.ignoresSafeArea()
           VStack{
               ScrollView(.vertical){
                   Spacer()
                   ZStack{
                       VStack(alignment: .leading, spacing: 2){
                   VStack{
                           VStack{
                   Text("1.Types of data we collect")                            .foregroundColor(.white)

                           
                   .fontWeight(.bold)
                   .font(.system(size: 20))
                   }

   }
                           Section{
       Text("Do you like to guarantee daily orders for the owners of the company?")                            .foregroundColor(.white)


                           .font(.system(size: 16))
                           .fontWeight(.bold)
       Text("You can register with us their activity skills and see the details")                            .foregroundColor(.white)

                                  
                           }
                       .padding()
                           VStack(spacing:10){
                       Section{
                   Text("2.Use of your personal data")                            .foregroundColor(.white)

                       .fontWeight(.bold)
                       .font(.system(size: 20))

                       }
                           }
                       Section{

       Text("And you like to guarantee daily orders for the owners of the company?")                            .foregroundColor(.white)

                           .fontWeight(.bold)
                           .font(.system(size: 16))
       Text("You can register with us their activity skills and see the details")                            .foregroundColor(.white)

                           
       Text("And you like to guarantee daily orders for the owners of the company?")                            .foregroundColor(.white)

                               .fontWeight(.bold)
                           .font(.system(size: 16))
       Text("You can register with us their activity skills and see the details")                            .foregroundColor(.white)

                           
                           
                       }
                                       .padding()

               VStack(spacing:10){
               Section{
           Text("3. Disclosure of your personal data")                            .foregroundColor(.white)

                       .fontWeight(.bold)
                       .font(.system(size: 20))
                      
                       }
                           }
                           Section{
       Text("And you like to guarantee daily orders for the owners of the company?")                            .foregroundColor(.white)

                               .fontWeight(.bold)
                           .font(.system(size: 16))
       Text("You can register with us their activity skills and see the details")
                                   .foregroundColor(.white)

       Text("And you like to guarantee daily orders for the owners of the company?")                            .foregroundColor(.white)

                       .fontWeight(.bold)
                       .font(.system(size: 16))
           
       Text("You can register with us their activity skills and see the details")                            .foregroundColor(.white)

                           }
                               .padding()
                   }
                      
               }
                   .padding()
                   
                   
               }
               .navigationTitle("Privacy Policy")
               .navigationBarTitleDisplayMode(.inline)
           }}
               
        
            
   }
}

struct PrivacyPolicy_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicy()
            .preferredColorScheme(.dark)
    }
    }

       


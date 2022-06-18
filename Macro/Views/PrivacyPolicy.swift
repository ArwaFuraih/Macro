//
//  Privacy Policy.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 13/11/1443 AH.
//


import SwiftUI
struct PrivacyPolicy: View {
   var body: some View {
       
        NavigationView{
            ScrollView(.vertical){
                Spacer()
                ZStack{
                    VStack(alignment: .leading, spacing: 2){
                VStack{
                        VStack{
                Text("1.Types of data we collect")
                        
                .fontWeight(.bold)
                .font(.system(size: 20))
                }

}
                        Section{
    Text("Do you like to guarantee daily orders for the owners of the company?")

                        .font(.system(size: 16))
                        .fontWeight(.bold)
    Text("You can register with us their activity skills and see the details")
                               
                        }
                    .padding()
                        VStack(spacing:10){
                    Section{
                Text("2.Use of your personal data")
                    .fontWeight(.bold)
                    .font(.system(size: 20))

                    }
                        }
                    Section{

    Text("And you like to guarantee daily orders for the owners of the company?")
                        .fontWeight(.bold)
                        .font(.system(size: 16))
    Text("You can register with us their activity skills and see the details")
                        
    Text("And you like to guarantee daily orders for the owners of the company?")
                            .fontWeight(.bold)
                        .font(.system(size: 16))
    Text("You can register with us their activity skills and see the details")
                        
                        
                    }
                                    .padding()

            VStack(spacing:10){
            Section{
        Text("3. Disclosure of your personal data")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                   
                    }
                        }
                        Section{
    Text("And you like to guarantee daily orders for the owners of the company?")
                            .fontWeight(.bold)
                        .font(.system(size: 16))
    Text("You can register with us their activity skills and see the details")
                        
    Text("And you like to guarantee daily orders for the owners of the company?")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
        
    Text("You can register with us their activity skills and see the details")
                        }
                            .padding()
                }
                   
            }
                .padding()
                
                .navigationTitle("Privacy Policy")
                .navigationBarTitleDisplayMode(.inline)
            }
            }
   }
    

struct PrivacyPolicy_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicy()
            .preferredColorScheme(.dark)
    }
    }

       
}

//
//   Verification.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 12/11/1443 AH.
//

import SwiftUI

struct  Verification: View {
    var body: some View {
        NavigationView{
           
            VStack(alignment: .leading, spacing: 10){
                    Section{
                        
                        Spacer()
                        Text("Get Your Code")
                            .fontWeight(.bold)
                            .padding()
                    }
                    Section{
                    Text("Please enter the 4 digit code sent to your  phone number")
                    }
                        .padding()

                        Section{
                        HStack(spacing:10){
                        ZStack{
                            Image("")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .padding().background(Color.them.myColor2)
                            .cornerRadius(8)
                        .frame(width: 65.82, height: 81.93)
//                        .cornerRadius(8)
                        Text("5")
                    }
                        .padding()
                    
                        Section{
                        ZStack{
                            Image("")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .padding().background(Color.them.myColor2)
                            .cornerRadius(8)
                        .frame(width: 65.82, height: 81.93)
                        Text("4")
                        }
                        .padding()
                        Section{
                        ZStack{
                            Image("")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .padding().background(Color.them.myColor2)
                            .cornerRadius(8)
                        .frame(width: 65.82, height: 81.93)
                        Text("8")
                            }
                        .padding()
                         Section{
                         ZStack{
                             Image("")
                             .resizable()
                             .aspectRatio(contentMode:.fit)
                        .padding().background(Color.them.myColor2)
                             .cornerRadius(8)
                         .frame(width: 65.82, height: 81.93)
                        Text("6")
                              .padding()
                         }
                         }
                            Section{
                             HStack{
                        Text("If you don’t receive code! ")
                                .offset(x:-240, y: 182)
                                     .padding(-120)
                                .padding(.leading, -10.0)
                                 Text(" Resend ").fontWeight(.bold)
                        .offset(x:-141, y: 102)                                         .padding(-40)
                             }
                             }
//                            .padding()
                        }
                        }
                        }
                                                         Spacer()

                            Section{
                            ZStack{
                                
                            Button(action:{}){
                                Text("Verify and Proceed")
                                .foregroundColor(.white)
                                .bold()
                                .frame(width: 342, height: 41.31)
                                .cornerRadius(8)
                                .background(Color("btnColor"))
                                .cornerRadius(8)
                                .padding()
                            }
                            }
                            }
                            .padding()
                            Spacer()

                            
                            
                            
                
                    
                        }
                        
        .navigationTitle(" Verification")
        .navigationBarTitleDisplayMode(.inline)
                                  
}
    }
}
    }
struct   Verification_Previews: PreviewProvider {
    static var previews: some View {
        Verification()
       .preferredColorScheme(.dark)

    }
}





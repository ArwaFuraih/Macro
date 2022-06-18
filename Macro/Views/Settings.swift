//
//  Settings.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 12/11/1443 AH.
//
import SwiftUI

struct  Settings: View {
    var body: some View {
        NavigationView{
//            Section{
            
                VStack(spacing:10){

                HStack{
                    ZStack{
                        Image("")
                        .resizable()
//                        .aspectRatio(contentMode:.fit)
                        .padding().background(Color.them.myColor2)
                        .cornerRadius(8)
                        .frame(width: 153, height: 148)
//LinearGradient(gradient: Gradient (colors: [Color.init(red: 0.090, green: 0.102, blue: 0.122), Color.init(red: 0.133, green: 0.137, blue: 0.173)]), startPoint: .top, endPoint: .bottom)
//                .frame(width: 153, height: 138)
//            .frame(width: 153, height: 138)
//            .cornerRadius(8)

            .padding()
                        VStack{
                        Image("profile33")
                            .padding()
                    Text("Profile")
                   

                        }
                        
                    }
                   
                    ZStack{
                        Image("")
                        .resizable()
//                        .aspectRatio(contentMode:.fit)
                        .padding().background(Color.them.myColor2)
                        .cornerRadius(8)
                        .frame(width: 153, height: 148)
                        .padding()
                        VStack{
//                    VStack(alignment: .leading, spacing: 10){
                        Image("FAQ")
                                    .padding()
                        Text("FAQ")
                        
                            }
//                                                            .padding()

                            }
//                    .padding()

                        }
                    VStack{
                HStack{
                ZStack{
                    Image("")
                    .resizable()
//                    .aspectRatio(contentMode:.fit)
                    .padding().background(Color.them.myColor2)
                    .cornerRadius(8)
                    .frame(width: 153, height: 148)
                    .padding()
                    VStack(spacing:10){

                            Image("99png")
                                .padding()
                        Text("Privacy Policy")
                            }
                            }
//                        .padding()
                        ZStack{
                            Image("")
                            .resizable()
//                            .aspectRatio(contentMode:.fit)
                            .padding().background(Color.them.myColor2)
                            .cornerRadius(8)
                            .frame(width: 153, height: 148)
                            .padding()
                            VStack{
                            Image("Technical Support")
                                    .padding()

                            Text("Technical Support")
                                }
                        }
//                        .padding()
                }
               
                
                        VStack{
                HStack{
                ZStack{
                    
                    Image("")
                    .resizable()
//                    .aspectRatio(contentMode:.fit)
                    .padding().background(Color.them.myColor2)
                    .cornerRadius(8)
                    .frame(width: 153, height: 148)
                    .padding()
                    VStack{

                            Image("apot us")
                            .padding()
                            Text("apot us")
                                }
                                }
//                            .padding()
                    ZStack{
                    Image("")
                    .resizable()
//                    .aspectRatio(contentMode:.fit)
                    .padding().background(Color.them.myColor2)
                    .cornerRadius(8)
                    .frame(width: 153, height: 148)
                    .padding()
                                VStack{
                                Image("share")
                                .padding()

                                Text("Share")
                                    
                                    }
                                    }
                            
                        }
    
                    ZStack{
                        Image("")
                        .resizable()
                        .padding()
            .background(Color.them.myColor2)
                        .cornerRadius(8)
        .frame(width: 153, height: 148)
.frame(maxWidth:.maximum(30,339),alignment:.leading)
                        .padding()
            VStack{
                            Image("log-off")
                   
                                .padding()

                                Text("Log Out")
                            
                                    }
.frame(maxWidth:.maximum(30,259),alignment:.leading)
                    }
                                
                    }
                
                }
//                    .padding(-10)
                
                Image("Group ")
                    .padding(-1)
                        }
//                    }
        .navigationTitle(" Settings")
        .navigationBarTitleDisplayMode(.inline)
                }
}
        }

    
struct   Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
       .preferredColorScheme(.dark)

    }
}
    





//VStack{
//    HStack{
//        Image( "servtype")
//        Text("Photography Service").font(.body)
//    }
//    HStack{
//        Image( "clock").foregroundColor(.white)
//        Text("12:00")
//
//    }
//    HStack{
//        Image("date")
//        Text("20-3-2011")
//
//    }
//    HStack{
//        Image("location").foregroundColor(.white)
//        Text("Riyadh").foregroundColor(.white)
//
//    }
    
    
//}

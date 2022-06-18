//
//  Settings.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 12/11/1443 AH.
//
import SwiftUI

struct  Settings: View {
    @State var showingAlert = false
    @State private var isShareSheetPresented = false


    var body: some View {
        NavigationView{
            
                VStack(spacing:10){

                    NavigationLink(destination: HomeView(), label: {
                        HStack{
                            ZStack{
                                Image("")
                                .resizable()
        //            .padding()
                    .background(Color.them.btnColor)
                                .cornerRadius(8)
                                .frame(width: 153, height: 148)
        //                        .padding()

                                VStack{
                                Image("profile33")
                                        .font(.system(size: 35))
                                    .padding()
                                   
                            Text("Profile")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .font(.system(size: 18))

                                }
                                
                            }
                                                .padding()

                            ZStack{
                                Image("")
                                .resizable()
                        .padding()
                        .background(Color.them.btnColor)
                                .cornerRadius(8)
                                .frame(width: 153, height: 148)
                                .padding()
                                VStack{
                                Image(systemName:"questionmark.circle")
                                        .font(.system(size: 35))
                                        .foregroundColor(.white)

                                            .padding()
                                
                                    NavigationLink(destination: faq(), label: {Text("FAQ")
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .font(.system(size: 18))})
                                    
                                    }
        //                           }                                 .padding()

                                    }
        //                    .padding()

                                }
                    })
              
                    VStack{
                HStack{
                ZStack{
                    Image("")
                    .resizable()
                    .padding()
                    .background(Color.them.btnColor)
                    .cornerRadius(8)
                    .frame(width: 153, height: 148)
                    .padding()
                    VStack(spacing:10){

                Image(systemName:"checkmark.shield")
                            .font(.system(size: 35))
                                .padding()
                                .foregroundColor(.white)

                        
                        NavigationLink(destination: PrivacyPolicy(), label: {Text("Privacy Policy")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.system(size: 18))})
                        

                            }
                            }
//                        .padding()
                    
                    Button {
                       showingAlert.toggle()

                    } label: {
                        ZStack{
                           
                            Image("")
                            .resizable()
                            .padding()
                    .background(Color.them.btnColor)
                            .cornerRadius(8)
                            .frame(width: 153, height: 148)
                            .padding()
                            VStack{
                            Image("Technical Support")
                            .font(.system(size: 18))

                                    .padding()

                            Text("Technical Support")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 16))

                                }
                        }
                    }.alert(isPresented:$showingAlert) {
                        Alert(
                            title: Text("share"), primaryButton: .destructive(Text("shares")) {
//                                    share()
                                print("logging in...")
                            },
                            secondaryButton: .cancel()
                        )}

                       
//                        .padding()
                }
               
                
                        VStack{
                HStack{
                    NavigationLink(destination: AboutUs(), label: {ZStack{
                        
                        Image("")
                        .resizable()
                        .padding()
                        .background(Color.them.btnColor)
                        .cornerRadius(8)
                        .frame(width: 153, height: 148)
                        .padding()
                        VStack{

                                Image(systemName: "info.circle")
                                .font(.system(size: 35))
                                .foregroundColor(.white)

                                .padding()
                                Text("Apot us")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.system(size: 18))

                                    }
                                    }})

                
//                            .padding()
                    
                    
//                    NavigationLink(destination: share(), label: {
                    
                    Button {
                        showingAlert.toggle()
                    } label: {
                        ZStack{
                        Image("")
                        .resizable()
                        .padding()
                        .background(Color.them.btnColor)
                        .cornerRadius(8)
                        .frame(width: 153, height: 148)
                        .padding()
                                    VStack{
                                    Image("share")
                                    .font(.system(size: 35))

                                    .padding()

                                    Text("Share")
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .font(.system(size: 18))

                                    }
                        }.alert(isPresented:$showingAlert) {
                            Alert(
                                title: Text("share"), primaryButton: .destructive(Text("shares")) {
//                                    share()
                                    print("logging in...")
                                },
                                secondaryButton: .cancel()
                            )}
                    }

                     
//                            }            .fullScreenCover(isPresented: $isShareSheetPresented, content: {
//                                Settings()})
                        
//                    })
                  
                            
                        }
                            
                            
                VStack{
                HStack{
                ZStack{
                                
                Image("")
                .resizable()
                                .padding()
                .background(Color.them.btnColor)
                .cornerRadius(8)
                .frame(width: 153, height: 148)
                .padding()
                VStack{

                Image(systemName: "person.2.circle")
                .font(.system(size: 35))
                .padding()
                .foregroundColor(.white)

                Text("Social media")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.system(size: 18))

                                            }
                                            }
//                                        .padding()
                    
                    NavigationLink(destination: HomeView()) {
                        ZStack{
                        Image("")
                        .resizable()
        //              .padding()
                        .background(Color.them.btnColor)
                        .cornerRadius(8)
                        .frame(width: 153, height: 148)
                        .padding()
                        VStack{
                        Image("log-off")
                        .font(.system(size: 35))
                        .padding()
                         Text("Log Out")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 18))
                            
                                                        }
                                                        }
                    }
             
                                        
                                    }
                
                    }
                                
                    }
                }
                }
                .padding(.top,3)
        .navigationTitle(" Settings")
.navigationBarTitleDisplayMode(.inline)
}
        }

    
struct   Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
            .preferredColorScheme(.light)

    }
}
}



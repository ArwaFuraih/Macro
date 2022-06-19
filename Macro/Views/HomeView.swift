//
//  HomeView.swift
//  Macro
//
//  Created by sumayah on 03/11/1443 AH.
//

import SwiftUI
import FirebaseAuth

@available(iOS 15.0, *)
struct HomeView: View {
    @State var selectedTab: Int = 0
    @State var showingAlert = false
    @State var userIsLogin = false
    @State var showSheet: Bool = false
    @State var showSheet3: Bool = false


//    var setti = Settings.self

    let advs: [String] = [
        "slamn", "slamn", "slamn"
    ]
  
    
    @available(iOS 15.0, *)
    var body: some View {
        
        NavigationView{
                VStack{
                    TabView {
                        ForEach(advs, id: \.self) { adv in
                            Image(adv)
                            
                                .resizable()
                                .scaledToFill()
                                .padding(.bottom,43)
                                
                            
                        }
                    }
                        .tabViewStyle(PageTabViewStyle())
                        .cornerRadius(8)
                        .tabViewStyle(.page)
//                        .indexViewStyle(.page())
                        .frame(width: 375, height: 150)
  
//                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/5)
//                        .accentColor(Color.pink)
//                                  .tabViewStyle(.page)

                    // two btn
                    
                    //
                    
                    VStack(alignment: .center, spacing: 0){
                        NavigationLink(
                            destination: information(),
                            label: {
                                
                                ZStack{
                                    
                                    Text("Request a Permit".uppercased())
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 332,        height: 78)
                                        .padding(.horizontal, 20)
                                        .background(
                                            Color.them.btnColor
                                                .cornerRadius(8)
                                                .shadow(radius: 2)
                                        )
                                    Image("chevron.right.2") .padding(.leading,270)
                                    
                                }
                                
                            }).padding()
                        
                        
                        NavigationLink(
                            destination: CreateOwnerAccount(),
                            label: {
                                ZStack{
                                    Text("Become a Drone Owner".uppercased())
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 332, height: 78)
                                        .padding(.horizontal, 20)
                                        .background(
                                            Color.them.btnColor
                                                .cornerRadius(8)
                                                .shadow(radius: 2)
                                        )
                                    Image("chevron.right.2") .padding(.leading,270)
                                    
                                }
                                
                            })
                        //
                        
                    }
                    
                    Text("Request  Services").font(.headline)
                        .fontWeight(.bold).padding(.trailing,172)                    //..................
                    
//                    VStack {
                    
                    
                  
                    
                        HStack{
                                   
                            NavigationLink {
                                Photography()
                            } label: {
                                ZStack{
                                   
                                    Image("le1").clipShape(
                                        RoundedRectangle(cornerRadius: 8))
                                        .frame(width: 162, height:109)
                                    Image("mle")
                                        .frame(width: 162, height: 109)
                                    Text("Photography").foregroundColor(Color.white).padding(.top,84)
                                }
                            }

//                                Button {
////                                    Auth.auth().currentUser != nil
//
////                                    showingAlert.toggle()
//                                    showSheet.toggle()
//                                } label: {
//                                    ZStack{
//                                       
//                                        Image("le1").clipShape(
//                                            RoundedRectangle(cornerRadius: 8))
//                                            .frame(width: 162, height:109)
//                                        Image("mle")
//                                            .frame(width: 162, height: 109)
//                                        Text("Photography").foregroundColor(Color.white).padding(.top,84)
//                                    }
//                                    
//                                  
//                                }.fullScreenCover(isPresented: $showSheet, content: {
//                                    Photography()
//                                })
                            
                            
                            //
                            
                            NavigationLink {
                                Argiculture()
                            } label: {
                                ZStack{
                                    Image("imlei")
                                        .clipShape(
                                    RoundedRectangle(cornerRadius: 8))
                                    .frame(width: 162, height:109)
                                    Image("imle")
                                        .clipShape(
                                    RoundedRectangle(cornerRadius: 8))
                                    .frame(width: 162, height:109)
                                          Text("Argiculture").foregroundColor(Color.white).padding(.top,84)
                                }
                            }

//                            Button {
////                                    Auth.auth().currentUser != nil
//
//                                showingAlert.toggle()
////                                    showSheet.toggle()
//                            } label: {
//                                ZStack{
//                                    Image("imlei")
//                                        .clipShape(
//                                    RoundedRectangle(cornerRadius: 8))
//                                    .frame(width: 162, height:109)
//                                    Image("imle")
//                                        .clipShape(
//                                    RoundedRectangle(cornerRadius: 8))
//                                    .frame(width: 162, height:109)
//                                          Text("Argiculture").foregroundColor(Color.white).padding(.top,84)
//                                }
//                                
//                              
//                            }.fullScreenCover(isPresented: $showSheet, content: {
//                                Account()
//                            })
                            
                                
                                
                            }
                    
                    
                    
                    
                    HStack{
                        
                        
                        
                        Button {
//                                    Auth.auth().currentUser != nil

//                            showingAlert.toggle()
                                    showSheet.toggle()
                        } label: {
                            ZStack{
                                Image("le2").clipShape(
                                    RoundedRectangle(cornerRadius: 8))
                                    .frame(width: 162, height:109)
                                Image("mle")
                                    .clipShape(
                                        RoundedRectangle(cornerRadius: 8))
                                        .frame(width: 162, height:109)
                                Text("Oil & Gas Mining").foregroundColor(Color.white).padding(.top,84)
                            }.fullScreenCover(isPresented: $showSheet, content: {
                                                Account()
                                            })

                            
                          
                        }
                    
                        
                        
                        //
                        
                        NavigationLink {
                         //   eng()
                        } label: {
                            ZStack{
                                Image("photogra")
                                    .frame(width: .infinity, height:109)
                                Image("rightm").resizable()
                                    .frame(width: .infinity, height: 117)
                                Text("Photography").foregroundColor(Color.white).padding(.top,84)
                            }

                        }

                        Button {
                        
                            if userIsLogin {
                                showSheet3.toggle()

                               }
                                    else{
                                        
                                         showingAlert.toggle()
                            
                        }
                                    
                                }
                        
                            label: {
                                    ZStack{
                                        Image("photogra")
                                            .frame(width: .infinity, height:109)
                                        Image("rightm").resizable()
                                            .frame(width: .infinity, height: 117)
                                        Text("Photography").foregroundColor(Color.white).padding(.top,84)
                                    }
                        
                        
                                    .alert(isPresented:$showingAlert) {
                                                Alert(
                                                    title: Text("not logged it"),
                                                    message: Text("you have to log in to use this service"),
                                                    primaryButton: .destructive(Text("login")) {
                                                        showSheet.toggle()
                                                        print("logging in...")
                                                    },
                                                    secondaryButton: .cancel()
                                                )}
                                }            .fullScreenCover(isPresented: $showSheet, content: {
                                    Settings()})
                                .fullScreenCover(isPresented: $showSheet3, content: {
                                   Settings()})
                        
                        
                        
                        
                        
                        //
                      
                        
                        
                        
                        
                        
//                        .onTapGesture {
                            //  if Auth.auth().currentUser =! nil ? nav.togele : showalet.toggele
                        }
//                            NavigationLink(
//                                                destination: MyOtherScreen(),
//                                                label: {
//                                                    Image(systemName: "gear")
//                                                })
                        
               
                    
                    
                    
                        
                        
                        
                        
                        
//                            Button(action: {
//                                Alert(
//                                    title: Text("An important title!"),
//                                    message: Text("A message that adds additional context on the alert."),
//                                    dismissButton: .cancel(Text("A cancel button"), action: {
//                                        print("Cancel button pressed, do something.")
//                                    })
//                                )
//
//                            }) {
//
//                                ZStack{
//
//                                    Image("sev4")
//                                        .frame(width: .infinity, height: 109)
//                                    Image("rightMask").resizable().frame(width: .infinity, height: 109)
//                                    Text("Energy").foregroundColor(Color.white).padding(.top,84)
//
//                                }.onTapGesture {
////                                    if Auth.auth().currentUser =! nil ? Settings.toggle() : .alear
//                                }
//                            }
                   
                        
                }.padding(.bottom,100)
                    
                        

            
                            
                        }.padding([.leading, .trailing], 20)
                        
     
//                        .padding([.leading, .trailing], 20)
//                    }.padding()
                    
                    
                    
                    
                    
        }}
        
        
    
        
        
    
   
    
//        return
//        if (userIsLogin == true){
//            NavigationLink {
//                Settings()} label: {"gjj"}
//
//        }else{
//            Alert(
//                title: Text("Title"),
//                message: Text("Message"),
//                dismissButton: .default(Text("Okay"), action: {
//
//
//                })
//            )
//        }
    
   
                
                
//            }.navigationBarItems(
//                leading:
//
//                    Image(systemName: "bell.badge")
                
//            )
            
            
//        }
        
        
        
        
//    }
    
//
//}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            HomeView()
//
//                .preferredColorScheme(.light)
            HomeView().navigationBarHidden(true)
//                .preferredColorScheme(.dark)
        }
    }
}





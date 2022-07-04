//
//  MyTab.swift
//  Macro
//
//  Created by sumayah on 16/11/1443 AH.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct MyTab: View{
//    @StateObject var firebaseManger = FirebaseManger()
//    @StateObject var firebaseManger = AuthViewModel()

    @EnvironmentObject var  viewModel : AuthViewModel


//    let user = UserKind.self
    var body: some View {
        ZStack{
            Color.them.myColor1.ignoresSafeArea()
            
            TabView{
                NavigationView{
                    HomeView()
                }
                    
                    .tabItem {
                                   Image("categcolor")
                                   Text("Catogries")
                               }
                NavigationView{
                    AirMap()
                }
                
                .tabItem {
                               Image(systemName: "map.fill")
                               Text("AirMap")
                           }
                
                if let user =  AuthViewModel.shared.user {
                    Group{
                        if user.isprovider {
                            NavigationView{
                              
                                orderProv()
                                
                            }.tabItem {
                                Image(systemName: "list.bullet.rectangle.portrait")
                                   Text("orders")
                               }
                        }else{ NavigationView{
                            orderCust()

                        }.tabItem {
                            Image(systemName: "list.bullet.rectangle.portrait")
                               Text("orders")
                           }
                            
                        }

                    }
                    
                   
                    
                 
                }
                
                
                
                NavigationView{
                    Settings()
                    
                } .navigationBarTitle("Settings", displayMode: .inline)
                    .background(NavigationConfigurator { nc in
                        nc.navigationBar.barTintColor = .blue
                        nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
                    })
                 
                .tabItem {
                               Image(systemName: "gear")
                               Text("Settings")
                           }
                

            }.accentColor(.gray)

            
        }
        
    }

}
struct MyTab_Previews: PreviewProvider {
    static var previews: some View {
        Group {
     
            MyTab()

                       .preferredColorScheme(.dark)
               }
    }
}


//
//  MyTab.swift
//  Macro
//
//  Created by sumayah on 16/11/1443 AH.
//

import SwiftUI
import Firebase

struct MyTab: View{
    @StateObject var firebaseManger = FirebaseManger()

    @EnvironmentObject var  m : AuthViewModel
//    init() {UITabBar.appearance().backgroundColor = UIColor.systemBackground}


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
                Group{
                if firebaseManger.user.isprovider{
                    NavigationView{
                        OffersProvider()
                    }
                    
                }
                    else{
                    NavigationView{
                        offersCustomer()
                    }
                    
                }
                }.tabItem {
                            Image(systemName: "list.bullet.rectangle.portrait")
                               Text("orders")
                           }
                
                NavigationView{
                    Settings()
                }
                 
                .tabItem {
                               Image(systemName: "gear")
                               Text("Settings")
                           }
                
            }.accentColor(Color.them.mygray)
            
        }
        

        
//        if m.isAouthenticatting{

        

            
            
//        }
//        else{
//            loginView()
//            
//        }
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

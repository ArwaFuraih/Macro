//
//  MyTab.swift
//  Macro
//
//  Created by sumayah on 16/11/1443 AH.
//

import SwiftUI
import Firebase

struct MyTab: View{
    
//    let user = UserKind.self
    var body: some View {
        TabView{
                HomeView()
                .tabItem {
                               Image("categcolor")
                               Text("Catogries")
                           }
            
            Text("AirMap")
            .tabItem {
                           Image(systemName: "map.fill")
                           Text("AirMap")
                       }
            
//            if Auth.auth().currentUser =  {
//                offersCustomer()
//            }else{
//                OffersProvider()
//            }
            
        
            offersCustomer()
            .tabItem {
                        Image(systemName: "list.bullet.rectangle.portrait")
                           Text("orders")
                       }
             Settings()
            .tabItem {
                           Image(systemName: "gear")
                           Text("Settings")
                       }
            
        }.accentColor(Color.them.mygray)

            
            
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

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
   init() {
       NAVColor()
       TabBarCustom()
}


//    @StateObject var firebaseManger = FirebaseManger()
//    @StateObject var firebaseManger = AuthViewModel()

    @EnvironmentObject var  viewModel : AuthViewModel

    @State private var selectedIndex = 0

//    let user = UserKind.self
    var body: some View {
        ZStack{
            Color.them.myColor1.ignoresSafeArea()
            
            TabView(selection: $selectedIndex){
            
            HomeView()
                    .onTapGesture {
                        self.selectedIndex = 0
                    }
                    .tabItem {
                                   Image("categcolor")
                                   Text("Catogries")
                               }.tag(0)
                
                
              
            AirMap()
                    .onTapGesture {
                        self.selectedIndex = 1
                    }
                
                    .tabItem {
                               Image(systemName: "map.fill")
                               Text("AirMap")
                           }.tag(1)
                
                if let user =  AuthViewModel.shared.user {
                    Group{
                        if user.isprovider {
                            
                                OrdersProvView()
                                .onTapGesture {
                                    self.selectedIndex = 2
                                }
                            .tabItem {
                                Image(systemName: "list.bullet.rectangle.portrait")
                                   Text("orders")
                               }.tag(2)
                        }else{ NavigationView{
//                            orderCust()
                            OrdersCustView()
                                .onTapGesture {
                                    self.selectedIndex = 3
                                }
                        }.tabItem {
                            Image(systemName: "list.bullet.rectangle.portrait")
                               Text("orders")
                        }.tag(3)
                            
                        }

                    }
                    
                   
                    
                 
                }
                
                
                
//                NavigationView{
                   
                    Settings()
                    .onTapGesture {
                        self.selectedIndex = 4
                    }
                    
                   
//                }.navigationBarTitle("Settings", displayMode: .inline)


                 
                .tabItem {
                               Image(systemName: "gear")
                               Text("Settings")
                }.tag(4)
                

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


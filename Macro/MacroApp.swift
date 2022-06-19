//
//  MacroApp.swift
//  Macro
//
//  Created by Arwa Alfuraih on 31/05/2022.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

@main
struct MacroApp: App {
    init(){FirebaseApp.configure()}
    var body: some Scene {
        WindowGroup {
            NavigationView{
//                test()
//                OffersProvider()
//                HomeView()
//                offersCustomer()
//                OffersProvider()
MyTab()
//                offersCustomer().navigationBarHidden(true)
                
            }
        }
    }
}

struct MacroApp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
     
            MyTab()

                       .preferredColorScheme(.dark)
               }
    }
}

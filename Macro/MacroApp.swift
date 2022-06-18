//
//  MacroApp.swift
//  Macro
//
//  Created by Arwa Alfuraih on 31/05/2022.
//

import SwiftUI
import Firebase

@main
struct MacroApp: App {
    init(){FirebaseApp.configure()}
    var body: some Scene {
        WindowGroup {
            NavigationView{
//                HomeView()
                offersCustomer()
//                OffersProvider()

//                offersCustomer().navigationBarHidden(true)
                
            }
        }
    }
}

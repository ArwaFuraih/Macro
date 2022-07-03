////
////  MacroApp.swift
////  Macro
////
////  Created by Arwa Alfuraih on 31/05/2022.
////
//
//


import SwiftUI
//import FirebaseCore
//import FirebaseAuth
import Firebase


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}



@main
struct MacroApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    @StateObject var viewModle = AuthViewModel()
    @StateObject var customerOrder = custumerOrdr()
   // @StateObject var registrationViewModel = RegistrationViewModel()

//    init(){FirebaseApp.configure()}
//     @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationView {

//                let mviewModel = AuthViewModel()
                MyTab()
//                environment(mviewModel)
                
            }.environmentObject( AuthViewModel.shared)
                .environmentObject( custumerOrdr())
        }
    }
}

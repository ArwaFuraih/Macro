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
    @StateObject var customerOrder = custumerOrder()
    @StateObject private var rootViews = RootViews.shared

    // @StateObject var registrationViewModel = RegistrationViewModel()

//    init(){FirebaseApp.configure()}
//     @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                 
                switch rootViews.root{
                case .onBoarding:
//                    splashscreen()
//                    splashscreen().preferredColorScheme(.dark)
                    OnBoardingView()
//                    paymentOrder(myOffer: OrderForFeed(order: Order(dictionary: [:]), user: User(dictionary: [:]), orderID: ""))
                case .mainTab:


                    MyTab().preferredColorScheme(.dark)
                    

                    
//                    RootView()

                }
                
//                test()
//                let mviewModel = AuthViewModel()
//                MyTab()
//                environment(mviewModel)
                
            }.environmentObject( AuthViewModel.shared)
                            .environmentObject( custumerOrder())
            
        }
    }
}

////
////  SwiftUI_OTPApp.swift
////  Macro
////
////  Created by sumayah on 17/11/1443 AH.
////
//
//import SwiftUI
//import Firebase
//
//@main
//struct SwiftUI_OTPApp: App {
//    
//    @UIApplicationDelegateAdaptor(AppDeletegate.self) var delegate
//    
//    let persistenceController = PersistenceController.shared
//    var body: some Scene {
//        WindowGroup {
//            Account()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//        }
//    }
//}
//
//class AppDeletegate: NSObject, UIApplicationDelegate {
//    
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        FirebaseApp.configure()
//        return true
//    }
//    
//    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
//        
//    }
//}

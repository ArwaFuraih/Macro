////
////  MacroApp.swift
////  Macro
////
////  Created by Arwa Alfuraih on 31/05/2022.
////
//
//
//import SwiftUI
//import FirebaseCore
//import Firebase
//import FirebaseAuth
//import FirebaseMessaging
//import UserNotificationsUI
//
//class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
//    var fcmRegTokenMessage: String = ""
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        FirebaseApp.configure()
//        Messaging.messaging().isAutoInitEnabled = true
//
//        if #available(iOS 10.0, *) {
//            // For iOS 10 display notification (sent via APNS)
//            UNUserNotificationCenter.current().delegate = self
//
//            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
//            UNUserNotificationCenter.current().requestAuthorization(
//                options: authOptions,
//                completionHandler: { _, _ in }
//            )
//        } else {
//            let settings: UIUserNotificationSettings =
//            UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
//            application.registerUserNotificationSettings(settings)
//        }
//
//        application.registerForRemoteNotifications()
//        return true
//    }
//
//    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//        Messaging.messaging().apnsToken = deviceToken
//        Auth.auth().setAPNSToken(deviceToken, type: .sandbox)
//    }
//
//
//
//    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
//        print("Firebase registration token: \(String(describing: fcmToken))")
//
//        let dataDict: [String: String] = ["token": fcmToken ?? ""]
//        NotificationCenter.default.post(
//            name: Notification.Name("FCMToken"),
//            object: nil,
//            userInfo: dataDict
//        )
//        // TODO: If necessary send token to application server.
//        // Note: This callback is fired at each app startup and whenever a new token is generated.
//        Messaging.messaging().token { token, error in
//            if let error = error {
//                print("Error fetching FCM registration token: \(error)")
//            } else if let token = token {
//                print("FCM registration token: \(token)")
//                self.fcmRegTokenMessage  = "Remote FCM registration token: \(token)"
//            }
//        }
//    }
//
//
//    func application(_ application: UIApplication, didReceiveRemoteNotification notification: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
//        if Auth.auth().canHandleNotification(notification) {
//            completionHandler(.noData)
//            return
//        }
//    }
//
//    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
//        if Auth.auth().canHandle(url) {
//            return true
//        }
//        return false
//    }
//}
//
//
//@main
//struct MacroApp: App {
//
// @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//var body: some Scene {
//        WindowGroup {
//
//
//
//            MyTab()
//
//
////            NavigationView{
////                test()
////                OffersProvider()
////                HomeView()
////                offersCustomer()
////                OffersProvider()
//
////                offersCustomer().navigationBarHidden(true)
//
//            }
//        }
//    }
////}
//
////struct MacroApp_Previews: PreviewProvider {
////
////    static var previews: some View {
////        Group {
////
////            MyTab()
////
////                       .preferredColorScheme(.dark)
//               }
//
//


//import SwiftUI
//import Firebase
//import FirebaseAuth
//import FirebaseMessaging
//import UserNotificationsUI
//
//class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
//    var fcmRegTokenMessage: String = ""
//
//     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        FirebaseApp.configure()
//        Messaging.messaging().isAutoInitEnabled = true
//
//            if #available(iOS 10.0, *) {
//            // For iOS 10 display notification (sent via APNS)
//            UNUserNotificationCenter.current().delegate = self
//
//            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
//            UNUserNotificationCenter.current().requestAuthorization(
//                options: authOptions,
//                completionHandler: { _, _ in }
//            )
//        } else {
//            let settings: UIUserNotificationSettings =
//            UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
//            application.registerUserNotificationSettings(settings)
//        }
//
//        application.registerForRemoteNotifications()
//        return true
//    }
//
//    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//        Messaging.messaging().apnsToken = deviceToken
//        Auth.auth().setAPNSToken(deviceToken, type: .sandbox)
//    }
//
//
//
//    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
//        print("Firebase registration token: \(String(describing: fcmToken))")
//
//        let dataDict: [String: String] = ["token": fcmToken ?? ""]
//        NotificationCenter.default.post(
//            name: Notification.Name("FCMToken"),
//            object: nil,
//            userInfo: dataDict
//        )
//        // TODO: If necessary send token to application server.
//        // Note: This callback is fired at each app startup and whenever a new token is generated.
//        Messaging.messaging().token { token, error in
//            if let error = error {
//                print("Error fetching FCM registration token: \(error)")
//            } else if let token = token {
//                print("FCM registration token: \(token)")
//                self.fcmRegTokenMessage  = "Remote FCM registration token: \(token)"
//            }
//        }
//    }
//
//
//    func application(_ application: UIApplication, didReceiveRemoteNotification notification: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
//        if Auth.auth().canHandleNotification(notification) {
//            completionHandler(.noData)
//            return
//        }
//    }
//
//    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
//        if Auth.auth().canHandle(url) {
//            return true
//        }
//        return false
//    }
//}
//
//
//
import SwiftUI
//import FirebaseCore
//import FirebaseAuth
import Firebase

//class AppDelegate: NSObject, UIApplicationDelegate {
// func application(_ application: UIApplication,
//          didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//  FirebaseApp.configure()
//  return true
// }
// func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//  print("\(#function)")
//  Auth.auth().setAPNSToken(deviceToken, type: .sandbox)
// }
// func application(_ application: UIApplication, didReceiveRemoteNotification notification: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
//  print("\(#function)")
//  if Auth.auth().canHandleNotification(notification) {
//   completionHandler(.noData)
//   return
//  }
// }
// func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
//  print("\(#function)")
//  if Auth.auth().canHandle(url) {
//   return true
//  }
//  return false
// }
//}





@main
struct MacroApp: App {
    init(){FirebaseApp.configure()}
//     @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationView{
//                OffersProvider()
////                test()
////                OffersProvider()
//         HomeView()
//                tetextfield()
//                ts()
//                offersCustomer()
//                offersCustomer()
////                OffersProvider()
                MyTab()
//                offersCustomer().navigationBarHidden(true)
                
            }
        }
    }
}

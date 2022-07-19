//
//  Settings.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 12/11/1443 AH.
//
import SwiftUI
import MessageUI
import FirebaseAuth

struct  Settings: View {
    var phoneNumber = "533-555-5555"
    var twittershow = "/PuterDrone"
    var likdinshow = "/puter-drone-3aa8bb245/"
    
    
    
    
    
    @ObservedObject var authViewModel = AuthViewModel()
    @ObservedObject var reg = RegistrationViewModel()
    
    @State var showmytab = false
    @State var showingAlert = false
    @State private var isShareSheetPresented = false
    @State private var shouldPresentNextView = false
    @State private var showingAlertsoical = false
    @State private var allshowmytab = false
    
    @Environment(\.openURL) var openURL
    
    
    
    
    var body: some View {
        
        
        ZStack{
            Color.them.myColor1.ignoresSafeArea()
            ScrollView{
            VStack{
              
                    HStack{
                        
                        NavigationLink {
                            //                                ProviderProfileView()
                            ProfileView()
                            
                        } label: {
                            ZStack{
                                Image("")
                                    .resizable()
                                //            .padding()
                                    .background(Color.them.myColor2)
                                    .cornerRadius(8)
                                    .frame(width: 153, height: 148)
                                //                        .padding()
                                
                                VStack{
                                    Image("profile33")
                                        .font(.system(size: 35))
                                        .padding()
                                    
                                    Text("Profile")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .font(.system(size: 18))
                                    
                                }
                                
                            }
                            .padding()
                            
                        }
                        
                        ZStack{
                            Image("")
                                .resizable()
                                .padding()
                                .background(Color.them.myColor2)
                                .cornerRadius(8)
                                .frame(width: 153, height: 148)
                                .padding()
                            VStack{
                                Image(systemName:"questionmark.circle")
                                    .font(.system(size: 35))
                                    .foregroundColor(.white)
                                
                                    .padding()
                                
                                NavigationLink(destination: faq(), label: {Text("FAQ")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    .font(.system(size: 18))})
                                
                            }
                            
                        }
                    }
                    
                    
                    HStack{
                        ZStack{
                            Image("")
                                .resizable()
                                .padding()
                                .background(Color.them.myColor2)
                                .cornerRadius(8)
                                .frame(width: 153, height: 148)
                                .padding()
                            VStack(spacing:10){
                                
                                Image(systemName:"checkmark.shield")
                                    .font(.system(size: 35))
                                    .padding()
                                    .foregroundColor(.white)
                                
                                
                                NavigationLink(destination: PrivacyPolicy(), label: {Text("Privacy\nPolicy")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    .font(.system(size: 18))})
                                
                                
                            }
                        }
                        
                        ZStack{
                            Button {
                                //                                shouldPresentNextView.toggle()
                                let phone = "tel://"
                                let phoneNumberformatted = phone + phoneNumber
                                guard let url = URL(string: phoneNumberformatted) else { return }
                                UIApplication.shared.open(url)
                                
                            } label: {
                                ZStack {
                                    
                                    Image("")
                                        .resizable()
                                        .padding()
                                        .background(Color.them.myColor2)
                                        .cornerRadius(8)
                                        .frame(width: 153, height: 148)
                                        .padding()
                                    VStack{
                                        Image("Technical Support")
                                            .font(.system(size: 18))
                                        
                                            .padding()
                                        
                                        Text("Technical\nSupport")
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .font(.system(size: 18))
                                        
                                    }
                                }
                            }
                            //                             .sheet(isPresented: $shouldPresentNextView,content: {
                            //                                 Text(phoneNumber)
                            //                                  })
                            //                        .padding()
                        }
                    }
                    
                    
                    HStack{
                        NavigationLink(destination: AboutUs(), label: {ZStack{
                            
                            Image("")
                                .resizable()
                                .padding()
                                .background(Color.them.myColor2)
                                .cornerRadius(8)
                                .frame(width: 153, height: 148)
                                .padding()
                            VStack{
                                
                                Image(systemName: "info.circle")
                                    .font(.system(size: 35))
                                    .foregroundColor(.white)
                                
                                    .padding()
                                Text("About Us")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.system(size: 18))
                                
                            }
                        }})
                        
                        
                        VStack{
                            Button {
                                self.isShareSheetPresented.toggle()
                            } label: {
                                ZStack{
                                    Image("")
                                        .resizable()
                                        .padding()
                                        .background(Color.them.myColor2)
                                        .cornerRadius(8)
                                        .frame(width: 153, height: 148)
                                        .padding()
                                    VStack{
                                        Image("share")
                                            .font(.system(size: 35))
                                        
                                            .padding()
                                        
                                        Text("Share")
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .font(.system(size: 18))
                                    }
                                }
                            }
                        }
                        .sheet(isPresented: $isShareSheetPresented) {
                            ShareSheetView(activityItems:[URL(string: "https://testflight.apple.com/v1/invite/ff8dfc19507f49aba97c2084d9ce91173c41d4a4ff6e48909dbb1d56dd8a70f26172a8e2?ct=FT758GL74V&advp=10000&platform=ios")!
                                                         ]) }
                    }
                }
                //                            }            .fullScreenCover(isPresented: $isShareSheetPresented, content: {
                //                                Settings()})
                
                //                    })
                HStack{
                    Button{
                        self.showingAlertsoical.toggle()
                    }
                label: {
                    ZStack{
                        Image("")
                            .resizable()
                            .padding()
                            .background(Color.them.myColor2)
                            .cornerRadius(8)
                            .frame(width: 153, height: 148)
                            .padding()
                        VStack{
                            
                            Image(systemName: "person.2.circle")
                                .font(.system(size: 35))
                                .padding()
                                .foregroundColor(.white)
                            
                            Text("Social media")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.system(size: 18))
                        }
                    }
                }
                .alert("Social Media", isPresented: $showingAlertsoical) {
                    
                    Button("Email") {
                        EmailService.shared.sendEmail(subject: "hello", body: "this is body", to: "puterdrone@gmail.com") { (isWorked) in
                            if !isWorked{ //if mail couldn't be presented
                                // do action
                            }
                            
                        }
                    }
                    Button("Twitter") {
                        //                              self.allshowmytab.toggle()
                        let email = "https://twitter.com"
                        let Emailformatted = email + twittershow
                        guard let url = URL(string: Emailformatted) else { return }
                        UIApplication.shared.open(url)
                        
                    }
                    Button("Linkedin"){
                        let linkedin = "https://www.linkedin.com/in"
                        let linkedinformatted = linkedin + likdinshow
                        guard let url = URL(string: linkedinformatted) else { return }
                        UIApplication.shared.open(url)
                    }
                }
                .sheet(isPresented: $allshowmytab) {
                    Text("https://twitter.com/PuterDrone")
                }
                    
                    //                    primaryButton: .destructive(Text("login"))
                    //                     {showSheet.toggle()},
                    //                      secondaryButton: .cancel())}
                    //                         //                                        .padding()
                    Button {
                        
                        guard let userId = Auth.auth().currentUser?.uid else {
                            print("user not logged in, and this whole view shouldn't appear")
                            return
                         }
                        
                         reg.x()
                        authViewModel.handleSignout()
                        showmytab.toggle()
                    } label: {
                        ZStack{
                            Image("")
                                .resizable()
                            //              .padding()
                                .background(Color.them.myColor2)
                                .cornerRadius(8)
                                .frame(width: 153, height: 148)
                                .padding()
                            VStack{
                                Image("log-off")
                                    .font(.system(size: 35))
                                    .padding()
                                Text("Log Out")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.system(size: 18))
                                
                            }
                        }
                        
                    }.fullScreenCover(isPresented: $showmytab) {
                        MyTab()
                    }
                    
                    
                    
                    //  Spacer()
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}



struct   Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
        
        //            .preferredColorScheme(.light)
        
    }
}

struct ShareSheetViewAll: UIViewControllerRepresentable {
    typealias Callback = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
    let activityItems: [Any]
    let applicationActivities: [UIActivity]? = nil
    let excludedActivityTypes: [UIActivity.ActivityType]? = nil
    let callback: Callback? = nil
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities)
        controller.excludedActivityTypes = excludedActivityTypes
        controller.completionWithItemsHandler = callback
        return controller
    }
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // nothing to do here
    }
}
struct MailView: UIViewControllerRepresentable {
    
    @Binding var isShowing: Bool
    @Binding var result: Result<MFMailComposeResult, Error>?
    
    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        
        @Binding var isShowing: Bool
        @Binding var result: Result<MFMailComposeResult, Error>?
        
        init(isShowing: Binding<Bool>,
             result: Binding<Result<MFMailComposeResult, Error>?>) {
            _isShowing = isShowing
            _result = result
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
            defer {
                isShowing = false
            }
            guard error == nil else {
                self.result = .failure(error!)
                return
            }
            self.result = .success(result)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShowing: $isShowing,
                           result: $result)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        return vc
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                                context: UIViewControllerRepresentableContext<MailView>) {
        
    }
}

class EmailService: NSObject, MFMailComposeViewControllerDelegate {
    public static let shared = EmailService()
    
    func sendEmail(subject:String, body:String, to:String, completion: @escaping (Bool) -> Void){
        if MFMailComposeViewController.canSendMail(){
            let picker = MFMailComposeViewController()
            picker.setSubject(subject)
            picker.setMessageBody(body, isHTML: true)
            picker.setToRecipients([to])
            picker.mailComposeDelegate = self
            
            UIApplication.shared.windows.first?.rootViewController?.present(picker,  animated: true, completion: nil)
        }
        completion(MFMailComposeViewController.canSendMail())
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}




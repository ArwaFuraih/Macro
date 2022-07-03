//
//  HomeView.swift
//  Macro
//
//  Created by sumayah on 03/11/1443 AH.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore


//
//class FirebaseManger:ObservableObject {
//   @Published  var user = User(dictionary: [:])
//
//   init() {
//       fetchCurrentUser()
//   }
//
//   func fetchCurrentUser(){
//       guard let userID = Auth.auth().currentUser?.uid else{return}
//       Firestore.firestore().collection("user").document(userID).getDocument { snapshot, error in
//           guard let snapshot = snapshot?.data() else {return}
//           self.user = User(dictionary: snapshot)
//           print(self.user)
//
//       }
//   }
//}



@available(iOS 15.0, *)
struct HomeView: View {
//    @ObservedObject var authViewModel = AuthViewModel()
    @EnvironmentObject var viewModel : AuthViewModel
//    @StateObject var firebaseManger = FirebaseManger()
    @State var selectedTab: Int = 0
    @State var showingAlert = false
//    @State var userIsLogin = false
    @State var showSheet: Bool = false
    @State var Photographysheet: Bool = false
    @State var RequestAPermitSheet : Bool = false
    @State var BecomeADroneOwnerSheet : Bool = false
    @State var Argiculturesheet : Bool = false
    @State var  EnergySheet : Bool = false
    @State var  OilSheet : Bool = false
    
//    var setti = Settings.self

    let advs: [String] = [
        "slamn", "slamn", "slamn"
    ]
  
    
    @available(iOS 15.0, *)
    var body: some View {
        ZStack{
            Color.them.myColor1.ignoresSafeArea()
        
                VStack{
                    TabView {
                        ForEach(advs, id: \.self) { adv in
                            Image(adv)
                            
                                .resizable()
                                .scaledToFill()
                                .padding(.bottom,43)
                                
                            
                        }
                    }
                        .tabViewStyle(PageTabViewStyle())
                        .cornerRadius(8)
                        .tabViewStyle(.page)
//                        .indexViewStyle(.page())
                        .frame(width: 375, height: 150)
  

                    
                    VStack(alignment: .center, spacing: 8){
                 
                        Button {
                            
                            if Auth.auth().currentUser != nil {
                                RequestAPermitSheet.toggle()
                            }else{  showingAlert.toggle ()}
//
//                            if authViewModel.isAouthenticatting{showSheet3.toggle()}
//                            else{showingAlert.toggle()}
                                }
                        
                    label: {
                            ZStack{
                        
                        Text("Request a Permit".uppercased())
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 332,        height: 78)
                            .padding(.horizontal, 20)
                            .background(
                                Color.them.btnColor
                                    .cornerRadius(8)
                                    .shadow(radius: 2)
                            )
                        Image("chevron.right.2") .padding(.leading,270)
                        
                    }
                .alert(isPresented:$showingAlert) {
                                    Alert(
                       title: Text("not logged it"),
                       message: Text("you have to log in to use this service"),
                       primaryButton: .destructive(Text("login"))
                       {showSheet.toggle()},
                        secondaryButton: .cancel())}
                                }
               .fullScreenCover(isPresented: $showSheet, content: { loginView()})
               .sheet(isPresented: $RequestAPermitSheet, content: {information()})
                        
                        
                        
      //
                        
//                        guard let uid = Auth.auth().currentUser?.uid else {
//
//
//                        }
                         
//
//                        if !firebaseManger.user.isprovider{
//                        if Auth.auth().currentUser != nil
                            if viewModel.user != nil{
                                Text( viewModel.user?.fullName  as? String ?? "gg").foregroundColor(.white)
//                            Text(authViewModel.user!.fullName)
                        }
                 
                        if let user =  AuthViewModel.shared.user {
                            if user.isprovider == false{
                                Button {
    //                                print(firebaseManger.user)
                                    if Auth.auth().currentUser != nil {
                                        BecomeADroneOwnerSheet.toggle()
                                    }else{  showingAlert.toggle ()}
        //
        //                            if authViewModel.isAouthenticatting{showSheet3.toggle()}
        //                            else{showingAlert.toggle()}
                                }
                               
                                label: {
                                    ZStack{
                                        Text("Become a Drone Owner".uppercased())
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(width: 332, height: 78)
                                            .padding(.horizontal, 20)
                                            .background(
                                                Color.them.btnColor
                                                    .cornerRadius(8)
                                                    .shadow(radius: 2)
                                            )
                                        Image("chevron.right.2") .padding(.leading,270)
                                        
                                    }
                                .alert(isPresented:$showingAlert) {
                                                    Alert(
                                       title: Text("not logged it"),
                                       message: Text("you have to log in to use this service"),
                                       primaryButton: .destructive(Text("login"))
                                       {showSheet.toggle()},
                                        secondaryButton: .cancel())}
                                                }
                            }
                     
                        }
                            
                           
                            
                      //  }
//                        else{
//
//                            EmptyView()
//
//                        }
                          
                                    
                            
                        
//                        }
                    
                    Text("Request  Services").foregroundColor(Color.white).font(.headline)
                        .fontWeight(.bold).padding(.trailing,172)
                        .fullScreenCover(isPresented: $showSheet, content: { loginView() })
                        .sheet(isPresented: $BecomeADroneOwnerSheet, content: { CreateOwnerAccount() })
                    //..................
                    
//                    VStack {
                    
                    
                  
                    
            HStack{
                //photography button
                            
                    Button {
                        if Auth.auth().currentUser != nil {
                            Photographysheet.toggle()
                        }else{  showingAlert.toggle ()}
//                        if Auth.auth().currentUser? nil {showingAlert.toggle() }
//
//                        else{showSheet3.toggle()}
                        
//                        if authViewModel.isAouthenticatting {showSheet3.toggle()}
//                        else{showingAlert.toggle()}
                            }
                            
                    label: {
                            ZStack{
                                    Image("photogra")
//                                    .frame(width: .infinity, height:109)
                                    Image("mle")
                                    .frame(width: 162, height: 109)
//                                        Image("rightm").resizable()
//                                        .frame(width: .infinity, height: 117)
                                    Text("Photography").foregroundColor(Color.white).padding(.top,84)
                                    }
                    .alert(isPresented:$showingAlert) {
                                        Alert(
                           title: Text("not logged it"),
                           message: Text("you have to log in to use this service"),
                           primaryButton: .destructive(Text("login"))
                           {showSheet.toggle()},
                            secondaryButton: .cancel())}
                                    }
                   .fullScreenCover(isPresented: $showSheet, content: { loginView()})
                   .sheet(isPresented: $Photographysheet, content: {Photography()})
//                       .fullScreenCover(isPresented: $showSheet3, content: {Settings()})
//
                            
              //Argiculture button
                
                Button {
                    if Auth.auth().currentUser != nil {
                        Argiculturesheet.toggle()
                    }else{  showingAlert.toggle ()}
                    
//                    if authViewModel.isAouthenticatting {showSheet3.toggle()}
//                    else{showingAlert.toggle()}
                        }
                        
                label: {
                        ZStack{
                                Image("Argi")
                                .frame(width: .infinity, height:109)
                                Image("imle")
                                .frame(width: 162, height: 109)
//                                        Image("rightm").resizable()
//                                        .frame(width: .infinity, height: 117)
                                Text("Argiculture").foregroundColor(Color.white).padding(.top,84)
                                }
                .alert(isPresented:$showingAlert) {
                                    Alert(
                       title: Text("not logged it"),
                       message: Text("you have to log in to use this service"),
                       primaryButton: .destructive(Text("login"))
                       {showSheet.toggle()},
                        secondaryButton: .cancel())}
                                }
               .fullScreenCover(isPresented: $showSheet, content: {loginView()})
               .sheet(isPresented: $Argiculturesheet, content: {Argiculture()})
    }
                    
                    
                    
                    
                    HStack{
                        
                        Button {
                            
                            if Auth.auth().currentUser != nil {
                                EnergySheet.toggle()
                            }else{  showingAlert.toggle ()}
//
//                            if authViewModel.isAouthenticatting{showSheet3.toggle()}
//                            else{showingAlert.toggle()}
                                }
                                
                        label: {
                                ZStack{
                                        Image("energyph")
                                        .frame(width: .infinity, height:109)
                                        Image("mle")
                                        .frame(width: 162, height: 109)
//                                        Image("rightm").resizable()
//                                        .frame(width: .infinity, height: 117)
                                        Text("Energy").foregroundColor(Color.white).padding(.top,84)
                                        }
                        .alert(isPresented:$showingAlert) {
                                            Alert(
                               title: Text("not logged it"),
                               message: Text("you have to log in to use this service"),
                               primaryButton: .destructive(Text("login"))
                               {showSheet.toggle()},
                                secondaryButton: .cancel())}
                                        }
                       .fullScreenCover(isPresented: $showSheet, content: { loginView()})
                       .sheet(isPresented: $EnergySheet, content: {Mining()})
                                
                                
                        
                        
                        
                        Button {
                            if Auth.auth().currentUser != nil {
                                OilSheet.toggle()
                            }else{  showingAlert.toggle ()}
                            
                        } label: {
                            ZStack{
                                Image("le2").clipShape(
                                    RoundedRectangle(cornerRadius: 8))
                                    .frame(width: 162, height:109)
                                Image("imle")
                                    .clipShape(
                                        RoundedRectangle(cornerRadius: 8))
                                        .frame(width: 162, height:109)
                                Text("Oil & Gas Mining").foregroundColor(Color.white).padding(.top,84)
                            } .alert(isPresented:$showingAlert) {
                                Alert(
                                   title: Text("not logged it"),
                                   message: Text("you have to log in to use this service"),
                                   primaryButton: .destructive(Text("login"))
                                   {showSheet.toggle()},
                                    secondaryButton: .cancel())}
                                            }
                           .fullScreenCover(isPresented: $showSheet, content: { loginView()})
                           .sheet(isPresented: $OilSheet, content: {Mining()})
                            
                            
//
//                            .fullScreenCover(isPresented: $showSheet, content: {
////                                                            Account()
//                                Settings()
//                                            })

                            
                          
                        }
                    
                        
                        
                        //
                        
                   
//
//                                    Button {
//
//                                        if userIsLogin {
//                                            showSheet3.toggle()
//
//                                           }
//                                                else{
//
//                                                     showingAlert.toggle()
//
//                                    }
//
//                                            }
//
//                                        label: {
//                                                ZStack{
//                                                    Image("photogra")
//                                                        .frame(width: .infinity, height:109)
//                                                    Image("rightm").resizable()
//                                                        .frame(width: .infinity, height: 117)
//                                                    Text("Energy").foregroundColor(Color.white).padding(.top,84)
//                                                }
//
//
//                                                .alert(isPresented:$showingAlert) {
//                                                            Alert(
//                                                                title: Text("not logged it"),
//                                                                message: Text("you have to log in to use this service"),
//                                                                primaryButton: .destructive(Text("login")) {
//                                                                    showSheet.toggle()
//                                                                    print("logging in...")
//                                                                },
//                                                                secondaryButton: .cancel()
//                                                            )}
//                                            }            .fullScreenCover(isPresented: $showSheet, content: {
//                                                Settings()})
//                                            .fullScreenCover(isPresented: $showSheet3, content: {
//                                               Settings()})
 
                        }.padding(.bottom,100)
                  
//                }.padding(.bottom,100)

                        }
            
        
        
        
        
        
        }
        
       
 
                    
        }
    

        
        
   




        
    
 


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            HomeView()
//
//                .preferredColorScheme(.light)
            HomeView().navigationBarHidden(true)
//                .preferredColorScheme(.dark)
        }
    }
}




}

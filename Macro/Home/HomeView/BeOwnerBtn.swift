//
//  BeOwnerBtn.swift
//  Macro
//
//  Created by sumayah on 07/12/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct BeOwnerBtn: View {
    @State var showingAlert = false
    @State var showSheet: Bool = false
    @State var BecomeADroneOwnerSheet : Bool = false
    @EnvironmentObject var viewModel : AuthViewModel


    var body: some View {
   
        
        
               if let user =  AuthViewModel.shared.user {
                   if user.isprovider == false{
                       Button {
                           if Auth.auth().currentUser != nil {
                               BecomeADroneOwnerSheet.toggle()
                           }else{  showingAlert.toggle ()}
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
                       .fullScreenCover(isPresented: $showSheet, content: { loginView() })
                       .fullScreenCover(isPresented: $BecomeADroneOwnerSheet, content: { CreateOwnerAccount() })
                   }

               }
               
    

    }
}

struct BeOwnerBtn_Previews: PreviewProvider {
    static var previews: some View {
        BeOwnerBtn()
    }
}

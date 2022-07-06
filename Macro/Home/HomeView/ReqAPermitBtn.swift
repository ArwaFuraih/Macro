//
//  ReqAPermitBtn.swift
//  Macro
//
//  Created by sumayah on 07/12/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct ReqAPermitBtn: View {
    @State var RequestAPermitSheet : Bool = false
    @State var showingAlert = false
    @State var showSheet: Bool = false


    var body: some View {
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
.fullScreenCover(isPresented: $RequestAPermitSheet, content: {information()})
    }
}

struct ReqAPermitBtn_Previews: PreviewProvider {
    static var previews: some View {
        ReqAPermitBtn()
    }
}

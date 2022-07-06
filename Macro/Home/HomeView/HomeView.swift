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
 
    @available(iOS 15.0, *)
    var body: some View {
        ZStack{
            Color.them.myColor1.ignoresSafeArea()
            VStack{
                AdView()
                VStack(alignment: .center, spacing: 8){
                    
                    ReqAPermitBtn()
                    BeOwnerBtn()
                    ServicesBtnVieew()
                     }

            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }}
    
}



//
//  ProviderProdileVM.swift
//  Macro
//
//  Created by Irfan-IOS on 16/07/2022.
//

import Foundation
import Firebase
final class  ProviderProdileVM : ObservableObject{
    @Published var user : User?

    func fetchUserData(){
        guard let uid = Auth.auth().currentUser?.uid  else {return}
        Firestore.firestore().collection("user").document(uid).getDocument { snapshot,error in
            if let error = error{
                print(error)
                return
            }
            guard let userData = snapshot?.data() else {return}

            self.user = User(dictionary: userData)
        }
    }
}


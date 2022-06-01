//
//  SignUp.swift
//  Macro
//
//  Created by sumayah on 02/11/1443 AH.
//

import SwiftUI

class FormViewModel:ObservedObject{
    @Published private var username = ""
//    @Published private var phoneNumber = ""
//    @Published private var email = ""
}

struct SignUp: View {
    var body: some View {
        NavigationView{
            VStack{
                
            }
            
        }.navigationTitle("Create Aocunt")
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

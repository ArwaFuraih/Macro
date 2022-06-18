//
//  test.swift
//  Macro
//
//  Created by sumayah on 18/11/1443 AH.
//

import SwiftUI

struct test: View {
    @State var showingAlert = false
    @State var userIsLogin = true
    var body: some View {
        Button {
            showingAlert = true
            
        } label: {
            ZStack{
                Image("photogra")
                    .frame(width: .infinity, height:109)
                Image("rightm").resizable()
                    .frame(width: .infinity, height: 117)
                Text("Photography").foregroundColor(Color.white).padding(.top,84)
            }
            .alert(isPresented:$showingAlert) {
                        Alert(
                            title: Text("not logged it"),
                            message: Text("you have to log in to use this service"),
                            primaryButton: .destructive(Text("login")) {
                                print("logging in...")
                            },
                            secondaryButton: .cancel()
                        )}
        }
        
        
    }

    }


struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}

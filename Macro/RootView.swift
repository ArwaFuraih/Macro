//
//  RootView.swift
//  Macro
//
//  Created by sumayah on 07/12/1443 AH.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        VStack{
            MyTab()
            
        }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem( placement: .navigationBarLeading){
                    Button {
                        
                    } label: {
                        Image(systemName: "bell.badge")
                            .font(.subheadline)
                            .padding(6)
                            .foregroundColor(.white)
                    }

                }
                
    }
}
}
struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

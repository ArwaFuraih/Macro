//
//  AdView.swift
//  Macro
//
//  Created by sumayah on 07/12/1443 AH.
//

import SwiftUI

struct AdView: View {
    
    let advs: [String] = [
        "slamn", "slamn", "slamn"
    ]
    var body: some View {
        TabView {
            ForEach(advs, id: \.self) { adv in
                Image(adv)
                
                    .resizable()
                    .scaledToFit()
                   // .padding(.bottom,43)
            }
        }
            .tabViewStyle(PageTabViewStyle())
            .cornerRadius(8)
            .tabViewStyle(.page)
//                        .indexViewStyle(.page())
            .frame(width: 375, height: 200)
    }
}

struct AdView_Previews: PreviewProvider {
    static var previews: some View {
        AdView()
    }
}

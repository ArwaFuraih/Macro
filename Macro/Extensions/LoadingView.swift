//
//  LoadingView.swift
//  Macro
//
//  Created by sumayah on 08/12/1443 AH.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .opacity(0.9)
                .ignoresSafeArea()
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: Color.them.btnColor))
                .scaleEffect(2)
                .offset(y:-40)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}

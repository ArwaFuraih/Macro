//
//  customText.swift
//  Macro
//
//  Created by sumayah on 13/12/1443 AH.
//

import SwiftUI

struct customText: View {
    let text:String

    var body: some View {
        Text("\(text)").padding(.horizontal,10).foregroundColor(.gray)
//        Text("\($text)").foregroundColor(.gray)
    }
}

struct customText_Previews: PreviewProvider {
    static var previews: some View {
        customText(text: "")
    }
}

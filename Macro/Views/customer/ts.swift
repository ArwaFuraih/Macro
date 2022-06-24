//
//  ts.swift
//  Macro
//
//  Created by sumayah on 25/11/1443 AH.
//

import SwiftUI

struct ts: View {
    @StateObject var m: custumerOrdr = custumerOrdr()

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ts_Previews: PreviewProvider {
    static var previews: some View {
        ts()
    }
}

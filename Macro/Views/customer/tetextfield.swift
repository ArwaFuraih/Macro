//
//  tetextfield.swift
//  Macro
//
//  Created by sumayah on 22/11/1443 AH.
//

import SwiftUI

struct tetextfield: View {
    @StateObject var m : custumerOrdr = custumerOrdr()
    @State private var newOrder = ""
    
    var body: some View {
        VStack{
            TextField("d",text: $newOrder)
            
            Button{
                m.addOrder(x: newOrder)
            }label: {
                Text("save")
            }
            
        }
    }
}

struct tetextfield_Previews: PreviewProvider {
    static var previews: some View {
        tetextfield()
    }
}


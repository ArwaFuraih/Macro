//
//  orderDetailsProvider.swift
//  Macro
//
//  Created by sumayah on 26/11/1443 AH.
//

import SwiftUI

struct orderDetailsProvider: View {
    @StateObject var m: custumerOrdr = custumerOrdr()

    var body: some View {
        ForEach(m.orders)  { index in

            
                 Text("Servece Owner\(index.user.fullName)")
                 Text("Date\(index.order.date)")
                 Text("city\(index.order.city)")
                 Text("Description\(index.order.description)")
                 Text("Letter\(index.order.Letter)")
                
            
        }
    }
}

struct orderDetailsProvider_Previews: PreviewProvider {
    static var previews: some View {
        orderDetailsProvider()
    }
}

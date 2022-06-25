//
//  orderDetailsCustomer.swift
//  Macro
//
//  Created by sumayah on 26/11/1443 AH.
//

import SwiftUI

struct orderDetailsCustomer: View {
    @StateObject var m: custumerOrdr = custumerOrdr()

    var body: some View {
        VStack{
        ForEach(m.orders)  { index in

        
       
            Text("Servece Owner\(index.user.fullName)")
            Text("Date\(index.order.date)")
            Text("Time\(index.order.time)")
            Text("city\(index.order.city)")
            Text("Description\(index.order.description)")
            Text("Letter\(index.order.Letter)")
            Text("mubarck\(index.user.fullName)")
            
            Text(" Service value\(index.order.Price)")
           
            

        }}
    }
}

struct orderDetailsCustomer_Previews: PreviewProvider {
    static var previews: some View {
        orderDetailsCustomer()
    }
}

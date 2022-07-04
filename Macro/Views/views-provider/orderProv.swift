//
//  orderProv.swift
//  Macro
//
//  Created by sumayah on 03/12/1443 AH.
//

import SwiftUI

struct orderProv: View {
    @State var selected = 1
    @StateObject var m: custumerOrdr = custumerOrdr()
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 4, alignment: nil)]
    var phoneNumber = "718-555-5555"
    
    
    var body: some View {
        
        ZStack {
                Color.them.myColor1.ignoresSafeArea()
            VStack {
                Picker(selection: $selected, label: Text("Picker"), content: {
                    Text("Orders").tag(1)
                    
                    Text("Offers").tag(2)
                    
                })
                .background(Color("btnColor"))
                .cornerRadius(8)
                .padding()
                .pickerStyle(SegmentedPickerStyle())
                
                if selected == 1 {
                    
                    Text("You don't have orders ")
                    orderCellP()
                    
                }
                else{
                    offerCellP()
                }
                
                Spacer()
                
                
            }
        }
    }
}

struct orderProv_Previews: PreviewProvider {
    static var previews: some View {
        orderProv()
    }
}



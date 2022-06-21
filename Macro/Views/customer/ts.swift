//
//  ts.swift
//  Macro
//
//  Created by sumayah on 22/11/1443 AH.
//

import SwiftUI
import Firebase

struct ts: View {
    
    @StateObject var m : custumerOrdr = custumerOrdr()
//    @ObservedObject var m = custumerOrdr()
    var body: some View {
        ForEach(m.list){ i in
            Text(i.NameOfServece)
//            Text("\(i.Price)")
           // Text(i.NameOfServece).foregroundColor(.white)
        }
//        List(0..6){
//            i in
//                Text("i.description")
//            
//        }
        
    }
//    init(){
//        m.getDate()
//    }
}

struct ts_Previews: PreviewProvider {
    static var previews: some View {
        ts().environmentObject(custumerOrdr())
    }
}

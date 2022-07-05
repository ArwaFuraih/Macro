//
//  orderCust.swift
//  Macro
//
//  Created by sumayah on 03/12/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct orderCust: View {
    
    @ObservedObject var m = custumerOrdr()
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 4, alignment:nil)
    ]
    
    @State var showSheet: Bool = false
    @ObservedObject var authViewModel = AuthViewModel()
    @State var selected = 1
    
    var body: some View {
        ZStack {
                Color.them.myColor1.ignoresSafeArea()
            ScrollView{
            VStack {
                //segmantPicker
                Picker(selection: $selected, label: Text("Picker"), content: {
                    Text("Orders").tag(1)
        
                    Text("Offers").tag(2)
        
                })
                    .background(Color("btnColor"))
                    .cornerRadius(8)
                    .padding()
                    .pickerStyle(SegmentedPickerStyle())
                
                
                                
             if selected == 1 {
                 
                    
                     
                                LazyVGrid(columns: columns){
                                    orderCellC().background(Color.them.myColor2)

                
                                        }
             }
                else{
                    offerCellC()
                }
                
              

            
            }
                Spacer()
            }
        }
                
            }
           
        }



struct orderCust_Previews: PreviewProvider {
    static var previews: some View {
        orderCust()
    }
}


struct myOffersCu :View {
    @StateObject var m: custumerOrdr = custumerOrdr()

//    @StateObject var viewModel : custumerOrdr = custumerOrdr()
    @State var showSheet = false
    @State var showSheet1 = false


let columns: [GridItem] = [
    GridItem(.flexible(), spacing: 4, alignment: nil)]

var body: some View {
    VStack{
        
        offerCellC().background(Color.them.myColor2)
    }.onAppear{
        if let user =  Auth.auth().currentUser?.uid{
            m.fetchCureentUser(userID: user)}}
            


}

}
    
    
                   
  
//}



struct myOffersCu_Previews: PreviewProvider {
static var previews: some View {
    myOffersCu().navigationBarHidden(true)
        .preferredColorScheme(.dark)

}
}
  

//
//  test.swift
//  Macro
//
//  Created by sumayah on 08/12/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct test: View {
    @StateObject var viewModel: custumerOrder = custumerOrder()
    @State var showpage = false
    @State private var price: String =  String()

    var body: some View {
//       
//        NavigationView{
//                ForEach(viewModel.orders){ item in
//                    item.user.fullName
//          
//        }
        VStack{
            Text("Enter Service Value Offer")
                .frame(maxWidth:.maximum(10,290),alignment:.center)
                .padding(.leading, -10)
            
            
            TextField("   200 SAR  ", text: $price).foregroundColor(.white)
            
                .background(Color("btnColor"))
                .cornerRadius(8)
                .frame(width: 97, height: 33)
                .frame(maxWidth:.maximum(10,190),alignment:.leading)
                .padding(.leading, 92)
            
            
            VStack{
            Button {
                guard let providerID = Auth.auth().currentUser?.uid else {
                    print("user not logged in, and this whole view shouldn't appear")
                    return
                }
                showpage.toggle()
                
                
//                viewModel.addPrice( orderID: <#String#>, providerID: providerID, price: price, offerStatus:.new)
            } label: {
                Text("Send")
                .foregroundColor(.white)
                .bold()
                .frame(width: 342, height: 41.31)
                .cornerRadius(8)
                .background(Color("btnColor"))
                .cornerRadius(8)
//                .padding(.top,770)
            }
            .fullScreenCover(isPresented: $showpage, content: {  successpremit()})

        }
        }
           
      
            
        }
    }


struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}

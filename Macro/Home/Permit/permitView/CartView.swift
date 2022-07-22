//
//  CartView.swift
//  SweaterShopApp
//
//  Created by Stephanie Diep on 2022-01-03.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @State var offer: OfferForFeed? = nil

    
    var permitID : String = ""
    //information view
    //#1 get permit Data
    //#2 get user data
    
//    Detailspermit
    
    var offerID : String = ""
    //accept button
    //#1 get offer data(price, orderID , providerID)
    //#2 get order data
    //#3 get provider data
    
//    paymentOrder
    
    var body: some View {
        ScrollView {
            VStack{
                
//                if offerID ==
                //order detiles done
//                detailsforpayment(myOrder: OrderForFeed(order: Order(dictionary: [:]), user: User(dictionary: [:]), orderID: ""))
                

                //not workig
                
                paymentOrder(myOffer: OfferForFeed(offer: Offers(dictionary: [:], documentID: ""), user: User(dictionary: [:]), order: Order(dictionary: [:]), offerID: ""), allserves: serviesList[0])
                
                
                
                
                //permit detiles done
//                Detailspermit(mypermit:permitanduser(permit: Permit(dictionary: [:]), user: User(dictionary: [:]), permitid: ""))
//
 
//                permitdetiles(mypermit: permitanduser(permit: Permit(dictionary: [:]), user: User(dictionary: [:]), permitid: ""))
                    .frame(maxWidth:.maximum(10,350),alignment:.leading)
                    .padding(.top,199)
                    .padding()
    if cartManager.paymentSuccess {
                 successpremit()
                  }
//                Text("Thanks for your purchase! You'll get cozy in our comfy sweaters soon! You'll also receive an email confirmation shortly.")
 
             else {
                if cartManager.servies.count > 0 {
                    ForEach(cartManager.servies, id: \.id) { allservies in
                        ProductRow(allServies: allservies, price: OfferForFeed(offer: Offers(dictionary: [:], documentID: ""), user: User(dictionary: [:]), order: Order(dictionary: [:]), offerID: ""))
                    }
                    
                    HStack {
                        Text("Your cart total is")
                        Spacer()
                        Text("SR\(cartManager.total).00")
                            .bold()
                    }
                    .frame(maxWidth:.maximum(10,289),alignment:.center)
                    
                    PaymentButton(action: cartManager.pay)
                         .padding()
                    
                } else {
                    Text("Your cart is empty.")
                }
            }
        }
//        .navigationTitle(Text("My Cart"))
         .onDisappear {
            if cartManager.paymentSuccess {
                cartManager.paymentSuccess = false
            }
        }
    }
}
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}


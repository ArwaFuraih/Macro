//
//  ProductRow.swift
//  SweaterShopApp
//
//  Created by Stephanie Diep on 2022-01-03.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var custumerOrder: custumerOrder

//    @StateObject var m: custumerOrder = custumerOrder()
    var allServies: Servies
    var price: OfferForFeed

    
    var body: some View {
        HStack(spacing: 20) {
//            Image(allServies.image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 50)
//                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(allServies.name)
                    .bold()
                Text("$\(allServies.priceoffer.price)")
//                Text("$\(m.)")
                
            }
            Spacer()

            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
            
            
                 .onTapGesture {
                    cartManager.removeFromCart(allServies: allServies)
                }
        }.onAppear(perform: {
            custumerOrder.getOffers()
        })
        .padding(.horizontal)
         .frame(maxWidth:.maximum(10,289),alignment:.center)

//        .frame(maxWidth:.maximum(10,289),alignment:.center)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(allServies: serviesList[2], price: OfferForFeed(offer: Offers(dictionary: [:], documentID: ""), user: User(dictionary: [:]), order: Order(dictionary: [:]), offerID: ""))
            .environmentObject(CartManager())
    }
}

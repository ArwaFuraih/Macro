//
//  ProductCard.swift
//  SweaterShopApp
//
//  Created by Stephanie Diep on 2021-12-23.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var allServies: Servies
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
//                Image(product.image)
//                    .resizable()
//                    .cornerRadius(20)
//                    .frame(width: 180)
//                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(allServies.name)
                        .bold()
                    
                    Text("\(allServies.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            NavigationLink {
                information(allmypermit: permitanduser(permit: Permit(dictionary: [  :  ]), user: User(dictionary: [  :  ]), permitid: ""), allServies: serviesList[0])
                    .environmentObject(cartManager)
                 
                 //                 cartManager.addToCart(allServies: allServies)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(allServies: serviesList[0])
            .environmentObject(CartManager())
    }
}

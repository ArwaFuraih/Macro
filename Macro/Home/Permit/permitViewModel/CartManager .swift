//
//  CartManager.swift
//  SweaterShopApp
//
//  Created by Stephanie Diep on 2022-01-03.
//

import Foundation

class CartManager: ObservableObject {
    @Published  var servies: [Servies] = []
    @Published  var total: Int = 0
    
    // Payment-related variables
    let paymentHandler = PaymentHandler()
    @Published var paymentSuccess = false
    
    
    // Functions to add and remove from cart
    func addToCart(allServies: Servies) {
        servies.append(allServies)
        total += allServies.price
    }
    
    func removeFromCart(allServies: Servies) {
        servies = servies.filter { $0.id != allServies.id }
        total -= allServies.price
    }
    
    // Call the startPayment function from the PaymentHandler. In the completion handler, set the paymentSuccess variable
    func pay() {
        paymentHandler.startPayment(servies: servies, total: total) { success in
            self.paymentSuccess = success
            self.servies = []
            self.total = 0
        }
    }
}

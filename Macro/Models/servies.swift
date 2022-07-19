//
//  Product.swift
//  SweaterShopApp
//
//  Created by Stephanie Diep on 2021-12-23.
//

import Foundation

struct Servies: Identifiable {
    var id = UUID()
    var name: String
//    var image: String
    var price: Int
}

var serviesList = [Servies(name: "Permit", price: 1),
                   Servies(name: "Photography", price: 289),
                   Servies(name: "Agriculture",  price: 300),
                   Servies(name: "public Safety",  price: 444),
                   Servies(name: "Construction ",  price: 199),
                   Servies(name: "Energy",  price: 800),
                   Servies(name: "Oil & Gas and Mining",  price: 594)]

 

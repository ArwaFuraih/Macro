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
    var priceoffer : Offers


    var price: Int
}

var serviesList = [Servies(name: "Permit", priceoffer: Offers(dictionary: [:], documentID: ""), price: 1),
                   Servies(name: "Photography", priceoffer: Offers(dictionary: [:], documentID: ""), price: 289),
                   Servies(name: "Agriculture",  priceoffer: Offers(dictionary: [:], documentID: ""), price: 300),
                   Servies(name: "public Safety",  priceoffer: Offers(dictionary: [:], documentID: ""), price: 444),
                   Servies(name: "Construction ",  priceoffer: Offers(dictionary: [:], documentID: ""), price: 199),
                   Servies(name: "Energy",  priceoffer: Offers(dictionary: [:], documentID: ""), price: 800),
                   Servies(name: "Oil & Gas and Mining",  priceoffer: Offers(dictionary: [:], documentID: ""), price: 800),
]

 

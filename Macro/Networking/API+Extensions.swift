//
//  API+Extensions.swift
//  Weather
//
//  Created by Arwa Alfuraih on 11/06/2022.
//

import Foundation
extension API {
    
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    
    static func getURLFor (lat: Double , lon:Double) -> String{
        
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&execlude=minutely&appid=\(key)&units=imperial"
    }
}

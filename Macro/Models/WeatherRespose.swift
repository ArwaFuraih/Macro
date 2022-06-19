//
//  WeatherRespose.swift
//  Weather
//
//  Created by Arwa Alfuraih on 11/06/2022.
//

import Foundation

struct WeatherResponse: Codable{
    
    var current: Weather
    var hourly: [Weather]
    var daily: [DailyWeather]
    
    static func empty() -> WeatherResponse {
        return WeatherResponse(current: Weather(), hourly: [Weather] (repeating: Weather(), count: 23), daily: [DailyWeather](repeating: DailyWeather(), count: 8))
    }
    
}

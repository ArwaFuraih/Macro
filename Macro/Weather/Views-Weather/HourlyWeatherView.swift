//
//  HourlyWeatherView.swift
//  Weather
//
//  Created by Arwa Alfuraih on 12/06/2022.
//

import SwiftUI

struct HourlyWeatherView: View {
    @ObservedObject var weatherVM: WeatherViewModel

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20){
                ForEach(weatherVM.weather.hourly){ weather in
                    let icon = weatherVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
                    let hour = weatherVM.getTimeFor(timestamp: weather.dt)
                    let temp = weatherVM.getTempFor(temp: weather.temp)
                    getHourlyView(hour: hour, image: icon, temp: temp)
                }
            }
            
        }
    }
    
    private func getHourlyView(hour: String, image: Image , temp: String) -> some View{
        VStack(spacing: 20){
            Text(hour)
            image
                .foregroundColor(.yellow)
            Text(temp)
    }
        .foregroundColor(.white)
        .padding()
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color("#8AC2F9"), Color("#6B88EF")]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)

    }
    
}

struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
AirMap()
        
    }
}

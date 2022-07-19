//
//  DailyWeatherView.swift
//  Weather
//
//  Created by Arwa Alfuraih on 12/06/2022.
//

import SwiftUI

struct DailyWeatherView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    var body: some View {
        

        ForEach(weatherVM.weather.daily){
            weather in
            LazyVStack{
                dailyCell(weather: weather)
            }
        }
        
    }
    private func dailyCell(weather: DailyWeather)-> some View{
        HStack{
            Text(weatherVM.getDayFor(timestamp: weather.dt).uppercased())
                .frame(width: 50)
            Spacer()
            Text("\(weatherVM.getTempFor(temp: weather.temp.max))| \(weatherVM.getTempFor(temp: weather.temp.min))℉")
                .frame(width: 150)
            Spacer()
            weatherVM.getWeatherIconFor(icon: weather.weather.count > 0 ? weather.weather[0].icon: "sun.max.fill")
        }
        .frame(width: 285)
        .foregroundColor(.white)
        .padding(.horizontal, 40)
        .padding(.vertical, 15)
        .background(RoundedRectangle(cornerRadius: 12).fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.18, green: 0.50, blue: 0.56), Color.black]) ,  startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
    
    
}



struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
    AirMap()
        
        
    }
}

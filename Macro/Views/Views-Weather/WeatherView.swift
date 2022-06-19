//
//  weatherView.swift
//  Weather
//
//  Created by Arwa Alfuraih on 12/06/2022.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var weatherVM: WeatherViewModel
    var body: some View {
        VStack{
            CityNameView(city: weatherVM.city, date: weatherVM.date)
                .shadow(radius: 0)
            TodayWeatherView(weatherVM: weatherVM)
                .padding()
            HourlyWeatherView(weatherVM: weatherVM)
            DailyWeatherView(weatherVM: weatherVM)
        }.padding(.bottom, 30)
        
    }

}

struct weatherView_Previews: PreviewProvider {
    static var previews: some View {
AirMap()
        
    }
}

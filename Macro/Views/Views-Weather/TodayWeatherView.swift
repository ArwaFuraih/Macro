//
//  TodayWeatherView.swift
//  Weather
//
//  Created by Arwa Alfuraih on 11/06/2022.
//

import SwiftUI

struct TodayWeatherView: View {
    @ObservedObject var weatherVM: WeatherViewModel
    
    var body: some View {
        VStack(spacing: 0){
//            Text("Today")
//                .font(.title)
//                .bold()
//
            HStack(spacing: 30){
                LottieView(name: weatherVM.getLottieAnimationFor(icon: weatherVM.weatherIcon))
                    .frame(width: 100, height: 120)
                VStack(alignment: .leading){
                    Text("\(weatherVM.temperature)℉")
                        .font(.system(size: 33))
                    Text(weatherVM.condition)
                }
            }
            
            HStack{
                Spacer()
                widgetView(image: "wind", color: .green, title: "\(weatherVM.windSpeed)mi/hr")
                Spacer()
                widgetView(image: "humidity.fill", color: .cyan, title: "\(weatherVM.humidity)")
                Spacer()
                widgetView(image: "umbrella.fill", color: .mint, title: "\(weatherVM.rainChance)")
                Spacer()
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 0.18, green: 0.50, blue: 0.56)]), startPoint: .top, endPoint: .bottom)).opacity(0.5))
        .shadow(color: .white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: .black.opacity(0.2), radius: 2, x: 2, y: 2)

    }
    
    
    private func widgetView(image:String , color: Color , title: String)-> some View{
        VStack{
            Image(systemName: image)
                .padding()
                .font(.body)
                .foregroundColor(color)
                .background(RoundedRectangle(cornerRadius: 12).fill(Color.white) .opacity(1))
            Text(title)
        }
    }
    
}

struct TodayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
AirMap()
        
    }
}

//
//  MenuHeaderView.swift
//  Weather
//
//  Created by Arwa Alfuraih on 11/06/2022.
//



//Class for the Search function in header of Weather view

import SwiftUI


//for searching
struct MenuHeaderView: View{
@ObservedObject var weatherVM: WeatherViewModel
@State private var searchTerm = "Search City Weather"


    var body: some View {
        HStack{
            TextField("",text: $searchTerm)
                .padding(.leading, 20)
            Button{
                weatherVM.city = searchTerm
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.black)
                     //   .fill(Color(red: 0.18, green: 0.50, blue: 0.56))
                    Image(systemName: "location.magnifyingglass")
                }
            }
            .frame(width: 35, height: 35)
        }
        .frame(width: 330, height: 25)
        .foregroundColor(.white)
        .padding()
        .background(ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors:[
                    Color.mint
                ]), startPoint: .topLeading, endPoint: .bottomTrailing)) .opacity(0.3)
        })
      //  HStack{}
    }
    
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AirMap()
    }
}

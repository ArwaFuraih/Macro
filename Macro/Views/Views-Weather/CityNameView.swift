//
//  CityNameView.swift
//  Weather
//
//  Created by Arwa Alfuraih on 11/06/2022.
//

import SwiftUI

struct CityNameView: View {
    var city: String
    var date: String
    
    
    var body: some View {
        
            HStack(alignment: .center, spacing: 10){
                Text(city)
                    
                Text(date)
            }.foregroundColor(.white)
        
    }
}

struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
AirMap()
        
    }
}

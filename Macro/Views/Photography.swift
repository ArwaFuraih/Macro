//
//  Photography.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 11/11/1443 AH.
//

import SwiftUI

struct Photography: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 10){
                       Image("Image")
                        .resizable()
                        .padding(.bottom, 22.0)
                        .frame(width:350, height: 340)
                        .cornerRadius(8)
                        .offset(x: -1, y: 20)
                        .padding()
                    Section{
        HStack(spacing:10){
        Image("Vector")
        Text("Inspired by the dream of flight                    ")
                    }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
        Image("Vector")

        Text("professional 4K camera drone                    ")
                }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
        Image("Vector")

        Text("sets the standard for professional drone photography."    )
                
        }
        .padding()
                    }
                    Spacer()
               ZStack{
               Button(action:{}){
                   Text("Request")
                   .foregroundColor(.white)
                   .bold()
                   .frame(width: 342, height: 41.31)
                   .cornerRadius(8)
                   .background(Color("btnColor"))
                   .cornerRadius(8)
               
               }
                }
               .padding()
                Spacer()
                    
                    
        .navigationTitle("Photography")
        .navigationBarTitleDisplayMode(.inline)
    
}
    }
}
struct Photography_Previews: PreviewProvider {
    static var previews: some View {
        Photography()
       .preferredColorScheme(.dark)

    }
}
}

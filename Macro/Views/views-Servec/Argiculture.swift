//
//  Argiculture.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 12/11/1443 AH.
//

import SwiftUI

struct Argiculture: View {
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
            Image(systemName:"checkmark.circle")
                .font(.system(size: 24))

        .frame(maxWidth:.maximum(80,-299),alignment:.center)
        Text("Crop Monitoring                                          ")
                    }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle")
                .font(.system(size: 24))

        .frame(maxWidth:.maximum(80,-299),alignment:.center)

        Text("Crop Protection                                            ")
                }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle")
                .font(.system(size: 24))

        .frame(maxWidth:.maximum(80,-299),alignment:.center)
        Text("Aerial Spreading                                        "    )
                
        }
        .padding()
                    }
                    Spacer()
                NavigationLink {
                    loading()
                } label: {
                    ZStack{
                    Button(action:{}){
                        Text("Request")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 342, height: 41.31)
                        .cornerRadius(8)
                        .background(Color("btnColor"))
                        .cornerRadius(8)
                 .frame(maxWidth:.maximum(80,699),alignment:.center)
                 .padding(.top,-38)

                    }
                     }
                }
                    
                    
        .navigationTitle("Argiculture")
        .navigationBarTitleDisplayMode(.inline)
 
                Spacer()
}
    }
}
struct Argiculture_Previews: PreviewProvider {
    static var previews: some View {
        Argiculture()
       .preferredColorScheme(.dark)

    }
}
}


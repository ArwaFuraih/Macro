//
//  success.swift
//  Macro
//
//  Created by najat ali on 13/11/1443 AH.
//

import SwiftUI
import RiveRuntime

struct success: View {
    var body: some View {
        
        NavigationView{
        VStack{

            RiveViewModel(fileName: "file2").view()
            
             Text("Success!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)

                 .padding(.bottom, 39.801)
//            Text("Thank you!")
//                .font(.title)
//                .fontWeight(.bold)
//                .oregroundColor(Color.white)

            Text("Your invoice has been successfuly sent")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                
            NavigationLink {
                   orderCust()
                } label: {
                 Text("Track your order")
                 .foregroundColor(.white)
                 .bold()
                 .frame(width: 342, height: 41.31)
                 .cornerRadius(8)
                 .background(Color("btnColor"))
                 .cornerRadius(8)
             
             }
             .padding()
          
            }
        .padding(.bottom, 139.801)
        .navigationTitle("")

        }
//        .padding()
}
}
struct success_Previews: PreviewProvider {
    static var previews: some View {
        success()
            .preferredColorScheme(.dark)

    }
}

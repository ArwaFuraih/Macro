//
//  test.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي   on 04/11/1443 AH.
//

import SwiftUI

struct MyOrder: View {
    var body: some View {
        
            NavigationView{
                ScrollView(.vertical){
                
                 ZStack{
                         
                     Image("")
                     .resizable()
                     .background(Color.them.myColor2)
                     .cornerRadius(8)
                    .frame(width: 373, height: 399)
                        .padding()
            VStack(alignment: .leading, spacing: 8){
                        HStack {
                        Image("date")
                        Text("Date: 1-1-2021 ")
                        .font(.system(size: 16))
                        }
                 
                        HStack {
                        Image(systemName:"hourglass")
                        Text("Duration:  4hour ")
                        .font(.system(size: 16))

                        }
                     
                 }
                 .padding()
    .frame(maxWidth:.maximum(10,379),alignment:.leading)
        .padding(.top,-199)

                     
            VStack(alignment: .leading, spacing: 8){
                        HStack {
                        Image(systemName:"clock")
                        Text("Time: 4;30 PM ")
                        .font(.system(size: 16))
                        }
                        HStack {
                        Image("hight")
                        Text("Hight: 100 ft ")
                        .font(.system(size: 16))
                        }
                        }
            .padding()
    .frame(maxWidth:.maximum(10,379),alignment:.trailing)
            .padding(.top,-199)
            VStack(alignment: .leading, spacing: 8){
                        Text("ID")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        Text("12567896332")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        }
              .padding()
    .frame(maxWidth:.maximum(10,381),alignment:.leading)
    .padding(.top,-126)

            VStack(alignment: .leading, spacing: 8){
                         Text("license number")
                         .font(.system(size: 16))
                         .fontWeight(.bold)
                         Text("#778890ijjyg9999")
                         .font(.system(size: 12))
                         .foregroundColor(.white)
                         }
    .frame(maxWidth:.maximum(10,350),alignment:.leading)
  .padding(.top,-49)
            VStack(alignment: .leading, spacing: 8){
                    Text("Drones permit")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    Text("1617166")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    }
    .frame(maxWidth:.maximum(10,350),alignment:.leading)
    .padding(.top,56)
            VStack(alignment: .leading, spacing: 8){
                    Text("Activity type")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    Text("commercial")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    }
.frame(maxWidth:.maximum(10,350),alignment:.leading)
.padding(.top,170)
                     
        VStack(alignment: .leading, spacing: 4){
                    Text("Flying Description:")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
Text("Coverage of the opening of the exhibition north of Riyadh ")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    }
.frame(maxWidth:.maximum(10,350),alignment:.leading)
               .padding(.top,286)
                 }
                    ZStack{
                        Image("")
                        .resizable()
                        .background(Color.them.myColor2)
                        .cornerRadius(8)
                        .frame(width: 373, height: 210)

            VStack(alignment: .leading, spacing: 8){
    Text("Service value:                                    500")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .font(Font.custom("Georgia", size: 16))

Text(" Added tax:                                          100")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
}
                        
    .frame(maxWidth:.maximum(10,289),alignment:.leading)
            .padding(.top,-60)
                        Image("line")
                
        VStack(alignment: .leading, spacing: 30){
                    ZStack{
Text("  Total price :                                   700 RS")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .font(Font.custom("Georgia", size: 16))

                    }
    .frame(maxWidth:.maximum(10,289),alignment:.leading)
                .padding(.top,50)
                    }
                    }
                    VStack{
                    Button(action:{}){
                    Image("apple pay 23")
                    .foregroundColor(.white)
                    .frame(width: 342, height: 41.31)
                    .cornerRadius(8)
.frame(maxWidth:.maximum(10,179),alignment:.center)
                    .padding(.top,50)
                    }
                 


                
                     
                         
                .navigationTitle("Order details")
                .navigationBarTitleDisplayMode(.inline)
                     }
                }
                

}
    }
    }

    

        
struct Order_Previews: PreviewProvider {
    static var previews: some View {
        MyOrder()
//            .preferredColorScheme(.dark)
        
    }
}





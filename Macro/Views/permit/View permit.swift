//
//  View permit.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 17/11/1443 AH.
//


import SwiftUI

struct Viewpermit: View {
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical){

//            VStack(alignment: .leading, spacing: 10){
//                Image("qr-code-1")
//                .resizable()
////                .background(Color.them.myColor2)
//                .frame(width:300, height: 300)
//                .cornerRadius(8)
//    .frame(maxWidth:.maximum(180,319),alignment:.center)
//
//                        .padding()
//            }
                ZStack{
                        
                    Image("")
                    .resizable()
                    .background(Color.them.myColor2)
                    .cornerRadius(8)
                   .frame(width: 373, height: 499)
                       .padding()
           VStack(alignment: .leading, spacing: 8){
                       HStack {
                       Image("date")
                       Text("Date: 1-1-2021 ")
                       .foregroundColor(.white)
                       .font(.system(size: 18))

                       }
                
                       HStack {
                       Image(systemName:"hourglass")
                       .foregroundColor(.white)

                       Text("Duration:  4hour ")
                       .font(.system(size: 18))
                       .foregroundColor(.white)

                       }
                    
                }
                .padding()
   .frame(maxWidth:.maximum(10,379),alignment:.leading)
       .padding(.top,-229)

                    
           VStack(alignment: .leading, spacing: 8){
                       HStack {
                       Image(systemName:"clock")
                       .foregroundColor(.white)

                       Text("Time: 4;30 PM ")
                       .font(.system(size: 18))
                       .foregroundColor(.white)
                       .foregroundColor(.white)


                       }
                       HStack {
                       Image("hight")
                       .foregroundColor(.white)

                       Text("Hight: 100 ft ")
                       .font(.system(size: 18))
                       .foregroundColor(.white)
                       .foregroundColor(.white)


                       }
                       }
                       .padding()
   .frame(maxWidth:.maximum(10,379),alignment:.trailing)
   .padding(.top,-229)
    VStack(alignment: .leading, spacing: 8){
                       Text("ID")
                       .font(.system(size: 16))
                       .fontWeight(.bold)
                       .foregroundColor(.white)

                       Text("12567896332")
                       .font(.system(size: 12))
                       .foregroundColor(.white)
                       }
             .padding()
   .frame(maxWidth:.maximum(10,381),alignment:.leading)
   .padding(.top,-146)

           VStack(alignment: .leading, spacing: 8){
                        Text("license number")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                        Text("#778890ijjyg9999")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        }
   .frame(maxWidth:.maximum(10,350),alignment:.leading)
 .padding(.top,-59)
           VStack(alignment: .leading, spacing: 8){
                   Text("Drones permit")
                   .font(.system(size: 16))
                   .fontWeight(.bold)
                   .foregroundColor(.white)

                   Text("1617166")
                   .font(.system(size: 12))
                   .foregroundColor(.white)
                   }
   .frame(maxWidth:.maximum(10,350),alignment:.leading)
   .padding(.top,66)
           VStack(alignment: .leading, spacing: 8){
                   Text("Activity type")
                   .font(.system(size: 16))
                   .fontWeight(.bold)
                   .foregroundColor(.white)

                   Text("commercial")
                   .font(.system(size: 12))
                   .foregroundColor(.white)
                   }
.frame(maxWidth:.maximum(10,350),alignment:.leading)
.padding(.top,199)
                    
       VStack(alignment: .leading, spacing: 4){
                   Text("Flying Description:")
                   .font(.system(size: 16))
                   .fontWeight(.bold)
                   .foregroundColor(.white)

Text("Coverage of the opening of the exhibition north of Riyadh ")
                   .font(.system(size: 12))
                   .foregroundColor(.white)
                   }
.frame(maxWidth:.maximum(10,350),alignment:.leading)
              .padding(.top,336)
                }
                .padding(.top,50)

                
                
                
                
                
                
                
            }
            
        .navigationTitle("View permit")
        .navigationBarTitleDisplayMode(.inline)
    
}
    }
}
struct Viewpermit_Previews: PreviewProvider {
    static var previews: some View {
        Viewpermit()
            .preferredColorScheme(.dark)

    }
}



//
//  test.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي   on 04/11/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct Detailspermit: View {
    
     let mypermit : permitanduser
    
   @StateObject var viewModel: permitviewModel = permitviewModel()
    
    @State var showpage = false
 
    var body: some View {
//        NavigationView{
        ZStack{
            Color.them.myColor1.ignoresSafeArea()
        VStack(alignment: .leading, spacing: 10){
                 ScrollView(.vertical){
                     VStack{
                     ZStack {
                      VStack(alignment: .leading){
                  ZStack{
            VStack(alignment: .leading, spacing: 8){
                        HStack {
                        Image("date")
                            Text("\(mypermit.permit.detailedTimestampString)")
                         .foregroundColor(.white)
                        .font(.system(size: 18))

                        }
                 
                        HStack {
                        Image(systemName:"hourglass")
                            Text("\(mypermit.permit.detailedTimestampString2)")

                        .foregroundColor(.white)
                            
//                            Text("\(i.user.fullName)")
//                        Text("Duration:  4hour ")
                        .font(.system(size: 18))
                        .foregroundColor(.white)

                        }
                     
                 }
                 .padding()
                 .frame(maxWidth:.infinity,alignment:.leading)
                   .padding(.top,-199)

                     
            VStack(alignment: .leading, spacing: 6){
                        HStack {
                        Image(systemName:"clock")
                            Text("\(mypermit.permit.duration)")
                        .foregroundColor(.white)

                            
//                        Text("Time: 4;30 PM ")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .foregroundColor(.white)


                        }
                        HStack {
                        Image("hight")
                            Text("\(mypermit.permit.hight)")
                        .foregroundColor(.white)

//                            Text("\(i.permit.hight)")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .foregroundColor(.white)


                        }
                        }
            .padding()
            .frame(maxWidth:.infinity,alignment:.trailing)
            .padding(.top,-199)
                     
            VStack(alignment: .leading, spacing: 6){
                        Text("National ID")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                Text(mypermit.user.NationalID)
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                        }
            .padding()
    .frame(maxWidth:.infinity,alignment:.leading)
    .padding(.top,-126)

            VStack(alignment: .leading, spacing: 6){
                         Text("license number")
                         .font(.system(size: 16))
                         .fontWeight(.bold)
                         .foregroundColor(.white)

                Text(mypermit.permit.licensenumber)
                         .font(.system(size: 16))
                         .foregroundColor(.white)
                         }
    .padding()
    .frame(maxWidth:.maximum(10,350),alignment:.leading)
  .padding(.top,-49)
                      
            VStack(alignment: .leading, spacing: 6){
                    Text("Drones permit")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text(mypermit.permit.Dronespermit)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    }
            .padding()
    .frame(maxWidth:.maximum(10,350),alignment:.leading)
    .padding(.top,56)
            VStack(alignment: .leading, spacing: 6){
                    Text("Activity type")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text(mypermit.permit.activitytype)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    }
            .padding()
.frame(maxWidth:.maximum(10,350),alignment:.leading)
.padding(.top,170)
                     
        VStack(alignment: .leading, spacing: 6){
            Text("Flying Description:")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(.white)

            Text(mypermit.permit.flyingdescription)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    }
            .padding()
                  .frame(maxWidth:.maximum(10,350),alignment:.leading)
               .padding(.top,286)
                 }
                  
                 .padding(.vertical)
                 .padding()
                 .background(Color.them.myColor2)
                .cornerRadius(8)
               .frame(width: 373, height: 399)
                   .padding()
                        
 
                    ZStack{
                        Image("")
                        .resizable()
                        .background(Color.them.myColor2)
                        .cornerRadius(8)
                        .frame(width: 373, height: 210)
                        .foregroundColor(.white)
 
            VStack(alignment: .leading, spacing: 8){
    Text("Service value:                                    500")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
        .font(Font.custom("Georgia", size: 16))
        .foregroundColor(.white)


Text(" Added tax:                                          100")
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .fontWeight(.bold)
}
     .frame(maxWidth:.maximum(10,289),alignment:.leading)
            .padding(.top,-60)
                        Image("line")
                        .foregroundColor(.white)

        VStack(alignment: .leading, spacing: 30){
                    ZStack{
Text("  Total price :                                   600 RS")
            .font(.system(size: 16))
            .fontWeight(.bold)
            .font(Font.custom("Georgia", size: 16))
            .foregroundColor(.white)

                    }
    .frame(maxWidth:.maximum(10,289),alignment:.leading)
                .padding(.top,50)
                    }
 
                       }
                    .padding()
 
                      }
                          
                      .navigationTitle("Request a Permit").foregroundColor(.white)
                   .navigationBarTitleDisplayMode(.inline)
                 }
                     }
                     }
        }}

    }
}
 struct DetailsOrder_Previews: PreviewProvider {
    static var previews: some View {
 
        Detailspermit(mypermit: permitanduser(permit: Permit(dictionary: [:]), user: User(dictionary: [:]), permitid: ""))
            .preferredColorScheme(.dark)
    }
}


//                    VStack{
//                       Button(action:{
//
////                           PaymentButton(action: alldetiles.payPermit)
//                        showSheet.toggle()
//
//                    }){
//                    Image("apple pay 23")
//                    .foregroundColor(.white)
//                    .frame(width: 3020, height: 81.31)
//                    .cornerRadius(8)
//.frame(maxWidth:.maximum(10,136),alignment:.center)
//                    .padding(.top,20)
//                    }.fullScreenCover(isPresented: $showSheet, content: {
//                        success()})
//
//                     }

 


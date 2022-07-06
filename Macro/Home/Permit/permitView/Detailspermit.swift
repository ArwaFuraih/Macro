//
//  test.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي   on 04/11/1443 AH.
//

import SwiftUI
import Firebase


struct Detailspermit: View {
    @StateObject var alldetiles = permitviewModel()
    
    @State var showSheet: Bool = false

    var body: some View {
        
            NavigationView{
                
                ScrollView(.vertical){

                    ForEach(alldetiles.permit) { i in
                        VStack(alignment: .leading) {
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
                        .foregroundColor(.white)
                        .font(.system(size: 18))

                        }
                 
                        HStack {
                        Image(systemName:"hourglass")
                        .foregroundColor(.white)
                            
                            Text("\(i.user.fullName)")
//                        Text("Duration:  4hour ")
                        .font(.system(size: 18))
                        .foregroundColor(.white)

                        }
                     
                 }
                 .padding()
    .frame(maxWidth:.maximum(10,379),alignment:.leading)
        .padding(.top,-199)

                     
            VStack(alignment: .leading, spacing: 8){
                        HStack {
                        Image(systemName:"clock")
                        .foregroundColor(.white)

                            
//                        Text("Time: 4;30 PM ")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .foregroundColor(.white)


                        }
                        HStack {
                        Image("hight")
                        .foregroundColor(.white)

                            Text("\(i.permit.hight)")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .foregroundColor(.white)


                        }
                        }
            .padding()
    .frame(maxWidth:.maximum(10,379),alignment:.trailing)
            .padding(.top,-199)
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
    .padding(.top,-126)

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
  .padding(.top,-49)
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
    .padding(.top,56)
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
.padding(.top,170)
                     
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
               .padding(.top,286)
                 }
                        }
                 .padding(.top,-90)

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
Text("  Total price :                                   700 RS")
            .font(.system(size: 16))
            .fontWeight(.bold)
            .font(Font.custom("Georgia", size: 16))
            .foregroundColor(.white)

                    }
    .frame(maxWidth:.maximum(10,289),alignment:.leading)
                .padding(.top,50)
                    }
                    }
                    }
                
                    VStack{
                       Button(action:{
                           
//                           PaymentButton(action: alldetiles.payPermit)
                        showSheet.toggle()

                    }){
                    Image("apple pay 23")
                    .foregroundColor(.white)
                    .frame(width: 3020, height: 81.31)
                    .cornerRadius(8)
.frame(maxWidth:.maximum(10,136),alignment:.center)
                    .padding(.top,20)
                    }.fullScreenCover(isPresented: $showSheet, content: {
                        success()})
                         
                     }
                    

                }
                
                
}
            .navigationTitle("Order details")
            .navigationBarTitleDisplayMode(.inline)
//            .onAppear(){
//                self.permitModel.fethchPermit()
//            }
 
    }
    }
 struct DetailsOrder_Previews: PreviewProvider {
    static var previews: some View {
        Detailspermit()
            .preferredColorScheme(.dark)
        
    }
}





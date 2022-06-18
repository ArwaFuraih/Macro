//
//  offersCustomer.swift
//  Macro
//
//  Created by sumayah on 17/11/1443 AH.
//

import SwiftUI
import Firebase

struct offersCustomer: View {
     
        let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 4, alignment:nil)]
    @State var serviceName : String = "Photography Service"
    @State var serviceTime : String = "12:00"
    @State var serviceDate : String = "10-8-2022"
    @State var serviceLoc : String = "Riyadh"
    @State var serviceStatus : String = "completed"
    @State var showSheet: Bool = false

//    @State var status : Order = Order(orderID: T##String, userID: T##User, droneType: T##String, Price: T##Double, status: T##Int, providerID: T##User, request: T##Request)
//

    @State var selected = 1
        var body: some View {
           
            ScrollView{
                VStack {
                    //segmantPicker
                    Picker(selection: $selected, label: Text("Picker"), content: {
                        Text("Orders").tag(1)
            
                        Text("Offers").tag(2)
            
                    })
                        .background(Color("btnColor"))
                        .cornerRadius(8)
                        .padding()
                        .pickerStyle(SegmentedPickerStyle())
                    
                    ForEach(0..<100) { index in
                                    
                               

                 if selected == 1 {
                                        LazyVGrid(columns: columns){
                                            
                                      ZStack {
                                          RoundedRectangle(cornerRadius: 8)
                                                          .fill(Color.them.myColor2)
                                                          .frame(width: 342, height: 121)
                                                          .cornerRadius(8)
                              //                          .frame(width: 300, height: 00)
                              //                                    .padding()
                                         

    //                                      LazyVGrid(columns: mycolumns){
                                              VStack(alignment: .leading, spacing: 2 ){
                                                  HStack(spacing: 3 ){
                                                      Image( "servtype")
                                                      Text("\(serviceName)"
                                                      
    ).foregroundColor(.white)
                                                          .font(.system(size:12, weight: .regular, design: .rounded))

                                                  }.padding(.trailing, 140)
                                                  HStack{
                                                      Image( "clo").foregroundColor(.white)
                                                      Text("\(serviceTime)").foregroundColor(.white)
                                                          .font(.system(size:12, weight: .regular, design: .rounded))

                                                  }
                                                  HStack{
                                                      Image("date")
                                                      Text("\(serviceDate)").foregroundColor(.white)
                                                          .font(.system(size:12, weight: .regular, design: .rounded))
                                                  }
                                                  
                                                  HStack{
                                                  Image("location").foregroundColor(.white)
                                                      Text("\(serviceLoc)").foregroundColor(.white)
                                                          .font(.system(size:12, weight: .regular, design: .rounded))
                                                  }}

                                              Spacer()
                                              ZStack{
                                                  RoundedRectangle(cornerRadius: 8)
                                                      .fill(Color.them.myColor2)
                                                      .cornerRadius(8)
                                                                  .frame(width: 150, height: 114)
                                                                  
                                                                  .background(Color.them.myColor2)
                                                                  .shadow(color: .them.myColor1, radius: 1, x: 0, y: 1)
                                                                  .padding(.leading,192)
                                                  VStack(alignment: .leading){
                                                      Group{
                                                          
                                                          Text("#998999").foregroundColor(.white)
                                                              .font(.system(size:12, weight: .regular, design: .rounded))
                                                          Text("\(serviceStatus)").foregroundColor(.green)
                                                              .font(.system(size:12, weight: .regular, design: .rounded))
                                                      }.padding(.leading,200)
                                                      
                                                      
                                                      Button(action: {
                                                          showSheet.toggle()

                                                          print("g")
                                                                 }, label: {
                                                                     Image("chevron order.right.2").padding(.leading,260).padding(.top, 10)
                   //
                                                      
                                                                 }).fullScreenCover(isPresented: $showSheet, content: { Settings()
                                                                  
                                                                                 })
                                                      
                                                      
                                                     
                                                  
                                              }
                                             
                                              
                                             
                                               
                                                  
                                              }
                                        
                                                
                                                
                                            }
                                        }
                    
                                            }
                    else{
                        myOffersCu()
                    }
                    
                    Spacer()

                
                }

                }
            }
          
        }
    }


struct offersCustomer_Previews: PreviewProvider {
    static var previews: some View {
        offersCustomer()
    }
}



struct myOffersCu :View {
let columns: [GridItem] = [
    GridItem(.flexible(), spacing: 4, alignment: nil)]

var body: some View {
    ForEach(0..<100) { index in
    
    LazyVGrid(columns: columns){
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                            .fill(Color.them.myColor2)
                            .frame(width: .infinity, height: 170)
                            .cornerRadius(8)
                            .padding()
            VStack{
                VStack(alignment: .leading, spacing: 4){
                    Group{
                        Button(action: {
                            print("g")
                                   }, label: {
                                       Image("ORDER1").clipShape(Circle())
                        
                                   })
                   
                                   
                       
                        Group{
                            Text("Fahad Alrogay").foregroundColor(.white)
                                .font(.system(size: 16, weight: .regular, design: .default))

                            Text("Price: 200 RS").foregroundColor(.white).font(.system(size: 14, weight: .regular, design: .default))

                            Text("Hours: 4").foregroundColor(.white).font(.system(size: 14, weight: .regular, design: .default))

                            
                        }
                       
                    }
                    .padding(.trailing, 170)
    //                    .padding(.top,70)
                    
                    HStack{
                        Group(){
                            Button(action: {
                                print("g")
                                       }, label: {
                                           Text("Reject".uppercased())
                                               .font(.headline)
                                               .fontWeight(.semibold)
                                               .foregroundColor(.white)
                                               .frame(width: 89, height: 30)

            //                                                       .padding()
            //                                                       .padding(.horizontal, 8)
                                               .background(
                                                Color.them.btnColor
                                                       .cornerRadius(10)
                                                       .shadow(radius: 10)
                                               )
                                       }).padding(.trailing,40)
                          

                            
                            Button(action: {
                                print("Accept")
                                       }, label: {
                                           Text("Accept".uppercased())
                                               .font(.headline)
                                               .fontWeight(.semibold)
                                               .foregroundColor(.white)
                                               .frame(width: 90, height: 32)
            //                                                       .padding()
            //                                                       .padding(.horizontal, 20)
                                               .background(
                                                Color.them.btnColor
                                                       .cornerRadius(10)
                                                       .shadow(radius: 10)
                                               )
                                       }).padding(.leading,50)
                            
                            
                        }
                       
    //    Spacer()
                        }
                       
                
            }
           
           


                }
                
            }.padding()



        }

        
    }
}

}
    
    
                   
  
//}



struct myOffersCu_Previews: PreviewProvider {
static var previews: some View {
    myOffersCu()
        .preferredColorScheme(.dark)

}
}
   



         
   
 

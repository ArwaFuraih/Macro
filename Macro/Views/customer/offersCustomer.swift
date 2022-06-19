//
//  offersCustomer.swift
//  Macro
//
//  Created by sumayah on 17/11/1443 AH.
//

import SwiftUI
import Firebase

struct offersCustomer: View {
//    @ObservedObject var customerOrder = custumerOrdr()
     
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
                    
                    
                    ForEach(0..<5)  { index in
                                    
                               

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
                                                      
                                                                 }).fullScreenCover(isPresented: $showSheet, content: { Viewpermit()
                                                                  
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
    
    @State var showSheet = false
    @State var showSheet1 = false


let columns: [GridItem] = [
    GridItem(.flexible(), spacing: 4, alignment: nil)]

var body: some View {
   
    ZStack{
        RoundedRectangle(cornerRadius: 8)
                        .fill(Color.them.myColor2)
                        .frame(width: 342, height: 187)
                        .cornerRadius(8)
//                        .padding()
        VStack{
            VStack{
                VStack(alignment: .leading, spacing:2){
                    NavigationLink {
                        HomeView()                    }
                label: {
                    Image("ORDER1").clipShape(Circle()).padding(.bottom)
                    }

//                    Button(action: {
//                        print("g")
//                               }, label: {
//                                   Image("ORDER1").clipShape(Circle()).padding(.bottom)
//
//                               }).padding(.leading,7)
                   
                        Text("Fahad Alrogay").foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular, design: .rounded))

                        Text("Price: 200 RS").foregroundColor(.white).font(.system(size: 12, weight: .regular, design: .rounded))

                        Text("Hours: 4").foregroundColor(.white).font(.system(size: 12, weight: .regular, design: .rounded))
                   
                    
                }.padding(.trailing,195)
                  
                
               
//                Spacer()
                
                NavigationLink {
                    DetailsOrder()

                } label: {
                    Text("Accept".uppercased())
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 108, height: 28)
//                                                       .padding()
//                                                       .padding(.horizontal, 20)
                        .background(
                         Color.them.btnColor
                                .cornerRadius(8)
                                .shadow(radius: 8)
                        )                }

                
                HStack{
//                        Button(action: , label: ).padding(.trailing,40)
                      

                        
                        Button(action: {
                            print("Reject")
                                   }, label: {
                                       Text("Reject".uppercased())
                                           .font(.system(size: 16, weight: .regular, design: .rounded))
                                           .fontWeight(.semibold)
                                           .foregroundColor(.white)
                                           .frame(width: 101, height: 28)
        //                                                       .padding()
        //                                                       .padding(.horizontal, 20)
                                           .background(
                                            Color.them.btnColor
                                                   .cornerRadius(8)
                                                   .shadow(radius: 8)
                                           )
                                   }).padding(.leading,50)
                        
                        
    
                   
//    Spacer()
                }
                   
            
            }
       
       


            }
            
        }

}

}
    
    
                   
  
//}



struct myOffersCu_Previews: PreviewProvider {
static var previews: some View {
    myOffersCu().navigationBarHidden(true)
        .preferredColorScheme(.dark)

}
}
   



         
   
 


//LazyVGrid(columns: columns){
   




    


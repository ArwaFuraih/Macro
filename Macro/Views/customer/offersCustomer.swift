//
//  offersCustomer.swift
//  Macro
//
//  Created by sumayah on 17/11/1443 AH.
//

import SwiftUI
import Firebase
import FirebaseAuth
struct offersCustomer: View {
    @ObservedObject var m = custumerOrdr()
//    @EnvironmentObject var m : custumerOrdr

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 4, alignment:nil)
    ]
    
    @State var showSheet: Bool = false
    @ObservedObject var authViewModel = AuthViewModel()
    @State var selected = 1
        var body: some View {
            if((Auth.auth().currentUser?.uid) != nil){
                
              //  if ((authViewModel.user?.isprovider ) == true){
//                    OffersProvider()
             //   }
            //    else {
//                    ScrollView{
//                    VStack {
//                        //segmantPicker
//                        Picker(selection: $selected, label: Text("Picker"), content: {
//                            Text("Orders").tag(1)
//                
//                            Text("Offers").tag(2)
//                
//                        })
//                            .background(Color("btnColor"))
//                            .cornerRadius(8)
//                            .padding()
//                            .pickerStyle(SegmentedPickerStyle())
//                        
//                        
//                                        
//                     if selected == 1 {
//                         
//                            
//                             
//                                        LazyVGrid(columns: columns){
////                                            ForEach(m.orders)  { index in
////
////
////    //                                        print("\(index.NameOfServece)")
////                                          ZStack {
////                                              RoundedRectangle(cornerRadius: 8)
////                                                              .fill(Color.them.myColor2)
////                                                              .frame(width: 342, height: 121)
////                                                              .cornerRadius(8)
////
////                                  //                          .frame(width: 300, height: 00)
////                                  //                                    .padding()
////
////
////        //                                      LazyVGrid(columns: mycolumns){
////                                                  VStack(alignment: .leading, spacing: 2 ){
////                                                      HStack(spacing: 3 ){
////                                                          Image( "servtype")
////                                                          Text("\(index.order.NameOfServece)"
////
////        ).foregroundColor(.white)
////                                                              .font(.system(size:12, weight: .regular, design: .rounded))
////
////                                                      }.padding(.trailing, 140)
////                                                      HStack{
////                                                          Image( "clo").foregroundColor(.white)
////                                                          Text("\(index.order.time)").foregroundColor(.white)
////                                                              .font(.system(size:12, weight: .regular, design: .rounded))
////
////                                                      }
////                                                      HStack{
////                                                          Image("date")
////                                                          Text("\(index.order.date)").foregroundColor(.white)
////                                                              .font(.system(size:12, weight: .regular, design: .rounded))
////                                                      }
////
////                                                      HStack{
////                                                      Image("location").foregroundColor(.white)
////                                                          Text("\(index.order.time)").foregroundColor(.white)
////                                                              .font(.system(size:12, weight: .regular, design: .rounded))
////                                                      }}
////
////                                                  Spacer()
////                                                  ZStack{
////                                                      RoundedRectangle(cornerRadius: 8)
////                                                          .fill(Color.them.myColor2)
////                                                          .cornerRadius(8)
////                                                                      .frame(width: 150, height: 114)
////
////                                                                      .background(Color.them.myColor2)
////                                                                      .shadow(color: .them.myColor1, radius: 1, x: 0, y: 1)
////                                                                      .padding(.leading,192)
////                                                      VStack(alignment: .leading){
////                                                          Group{
////
////                                                              Text("#998999").foregroundColor(.white)
////                                                                  .font(.system(size:12, weight: .regular, design: .rounded))
////                                                              Text("\(index.order.status)").foregroundColor(.green)
////                                                                  .font(.system(size:12, weight: .regular, design: .rounded))
////                                                          }.padding(.leading,200)
////
////
////                                                          NavigationLink {
////                                                              Viewpermit()
////                                                          } label: {
////                                                              Image("chevron order.right.2").padding(.leading,260).padding(.top, 10)
////                                                          }
////
////    //                                                      Button(action: {
////    //                                                          showSheet.toggle()
////    //
////    //                                                          print("g")
////    //                                                                 }, label: {
////    //                                                                     Image("chevron order.right.2").padding(.leading,260).padding(.top, 10)
////    //                   //
////    //
////    //                                                                 }).fullScreenCover(isPresented: $showSheet, content: { Viewpermit()
////    //
////    //                                                                                 })
////    //
////
////
////
////                                                  }
////
////
////
////
////
////                                                  }
////
////
////
////                                                }
////                                            }
//                        
//                                                }
//                     }
//                        else{
//                            myOffersCu()
//                        }
//                        
//                      
//
//                    
//                    }
//                        Spacer()
//                    }
             //   }
            }
                
            }
    
}
           
 
        



struct offersCustomer_Previews: PreviewProvider {
    static var previews: some View {
        offersCustomer()
    }
}



 



         
   
 


//LazyVGrid(columns: columns){
   




    


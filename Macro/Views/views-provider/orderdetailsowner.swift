//
//  order details owner.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 15/11/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct orderdetailsowner: View {
    
    let myOrder : OrderForFeed
//    let myOffer : Offers
    @StateObject var viewModel: custumerOrder = custumerOrder()
    @State var showpage = false
    @State private var price: String =  String()
    //    let myOrder : Offers
    
    
    var body: some View {
        
        ScrollView{
            
            ZStack{
                VStack(alignment: .leading, spacing: 10){
                    Image("")
                        .resizable()
                        .background(Color.them.myColor2)
                        .cornerRadius(8)
                        .frame(width: 349, height: 327)
                }
                .padding(.top,-371)
                
                VStack(spacing:11){
                    VStack(spacing:10){
                        Image("ORDER1")
                        Image("ORDER2")
                        Text("\(myOrder.user.fullName)")
                    
                    }
                    .padding()
                    
                    Section{
                        HStack{
                            Text("City     :")
                            Text("\(myOrder.order.city)")
                        }
                        HStack{
                            Text("Date    :")
                            Text("1-1-2022")
                        }
                        HStack{
                            Text("Hours  :")
                            Text("\(myOrder.order.Hours)")
                        }
                        
                        VStack(spacing:8){
                            Text("Description :")
                                .frame(maxWidth:.maximum(10,314),alignment:.leading)
                            Text("\(myOrder.order.description)")
                        }
                    }
                    .frame(maxWidth:.maximum(10,314),alignment:.leading)
                }
                .padding(.top,-372)
                
                ZStack{
                    VStack(spacing:8){
                        HStack{
                            Image(systemName:"checkmark.square")
                            Text("When accepting the request, I promise")
                                .fontWeight(.bold)
                                .font(.system(size: 16))
                                .padding()
                        }
                        .frame(maxWidth:.maximum(10,411),alignment:.leading)
                        .padding(.top,-9)
                        
                        
                        
                        VStack(spacing:5){
                            Text(".Having a valid permit")
                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
                                .padding(.top,-16)
                            Text(".To be fully qualified to use the drone")
                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
                                .padding(.top,14)
                            Text(".Preserving public property")
                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
                                .padding(.top,14)
                            Text(".Strict adherence to security instructions")
                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
                                .padding(.top,14)
                            
                        }
                        .frame(maxWidth:.maximum(10,330),alignment:.leading)
                        
                    }
                    
                    .padding(.top,100)
                    
                    
                    
                    
                    ZStack{
                        VStack(spacing:5){
                            HStack{
                                
                                Image(systemName:"checkmark.square")
                                
                                Text("I undertake to assume all related  responsibilities in the event of a violation ofthe foregoing.")
                                
                                    .fontWeight(.bold)
                                    .font(.system(size: 16))
                                    .padding()
                            }
                        }
                    }
                    
                    
                    .frame(maxWidth:.maximum(10,401),alignment:.leading)
                    .padding(.top,360)
                    .padding()
                    
                    VStack(alignment: .leading, spacing: 5){
                        
                        
                        Text("Enter Service Value Offer")
                            .frame(maxWidth:.maximum(10,290),alignment:.center)
                            .padding(.leading, -10)
                        
                        TextField("   200 SAR  ", text: $price)
                        
                            .background(Color("btnColor"))
                            .cornerRadius(8)
                            .frame(width: 97, height: 33)
                            .frame(maxWidth:.maximum(10,190),alignment:.leading)
                            .padding(.leading, 92)
                        
                    }
                    .padding(.top,553)
                    
                    
                    //           ZStack{
             
                    //
                    //            }
                    //           .padding(.top,-60)
                    
                    
                    .navigationTitle("order details")
                    .navigationBarTitleDisplayMode(.inline)
                }
        
                
            }
            
            Spacer()
            VStack{
                Button {
                    guard let providerID = Auth.auth().currentUser?.uid else {
                        print("user not logged in, and this whole view shouldn't appear")
                        return
                    }
                    showpage.toggle()
                    //
                    //
                    viewModel.addPrice(documentID: myOrder.orderID, orderID:myOrder.orderID ,providerID: providerID, price: price, offerStatus: .new)
                } label: {
                    Text("Send")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 342, height: 41.31)
                        .cornerRadius(8)
                        .background(Color("btnColor"))
                        .cornerRadius(8)
                    //                .padding(.top,770)
                }
                .fullScreenCover(isPresented: $showpage, content: {  MyTab()})
                
            }
            
            
            //        ScrollView{
            //
            //                                VStack(alignment: .leading, spacing: 10){
            //                                    Image("")
            //                                        .resizable()
            //                                    //                            .background(Color.them.myColor2)
            //                                        .cornerRadius(8)
            //                                        .frame(width: 349, height: 327)
            //                                }
            //                                .padding(.top,-371)
            //
            //                                VStack(spacing:11){
            //                                    VStack(spacing:10){
            //                                        Image("ORDER1")
            //                                        Image("ORDER2")
            //                                        //                                        Text("\(index.user.fullName)")
            //                                    }
            //                                    .padding()
            //
            //                                    Section{
            //                                        HStack{
            //                                            //                                        Text("City     :\(index.order.city)")
            //                                        }
            //                                        HStack{
            //                                            Text("Date    :")
            //                                            Text("1-1-2022")
            //                                        }
            //                                        HStack{
            //                                            //                                        Text("Hours  :\(index.order.Hours)")
            //                                        }
            //
            //                                        VStack(spacing:8){
            //                                            Text("Description :")
            //                                                .frame(maxWidth:.maximum(10,314),alignment:.leading)
            //
            //                                            Text("Coverage of the opening of the exhibition north of Riyadh.")
            //                                        }
            //                                    }
            //                                    .frame(maxWidth:.maximum(10,314),alignment:.leading)
            //                                }
            //                                .padding(.top,-372)
            //
            //            VStack{
            //                VStack{
            //
            //                    Text("Enter Service Value Offer")
            //                        .frame(maxWidth:.maximum(10,290),alignment:.center)
            //                        .padding(.leading, -10)
            //                    Text( "here \(myOrder.orderID)")
            //                    TextField("   200 SAR  ", text: $price).foregroundColor(.white)
            //
            //                        .background(Color("btnColor"))
            //                        .cornerRadius(8)
            //                        .frame(width: 97, height: 33)
            //                        .frame(maxWidth:.maximum(10,190),alignment:.leading)
            //                        .padding(.leading, 92)
            //
            //
            ////                    VStack{
            ////                        Button {
            ////                            guard let providerID = Auth.auth().currentUser?.uid else {
            ////                                print("user not logged in, and this whole view shouldn't appear")
            ////                                return
            ////                            }
            ////                            showpage.toggle()
            ////
            ////
            ////                            viewModel.addPrice(orderID:myOrder.orderID ,providerID: providerID, price: price, offerStatus: .new)
            ////                        } label: {
            ////                            Text("Send")
            ////                                .foregroundColor(.white)
            ////                                .bold()
            ////                                .frame(width: 342, height: 41.31)
            ////                                .cornerRadius(8)
            ////                                .background(Color("btnColor"))
            ////                                .cornerRadius(8)
            ////                            //                .padding(.top,770)
            ////                        }
            ////                        .fullScreenCover(isPresented: $showpage, content: {  MyTab()})
            ////
            ////                    }
            //                }
            //
            //
            //
            //
            //
            //                //           ZStack{
            //
            //
            //
            //
            //
            //                //        ScrollView{
            //                //            ZStack{
            //
            //                //
            //                //                ZStack{
            //                //                    VStack(spacing:8){
            //                //                        HStack{
            //                //                            Image(systemName:"checkmark.square")
            //                //                            Text("When accepting the request, I promise")
            //                //                                .fontWeight(.bold)
            //                //                                .font(.system(size: 16))
            //                //                                .padding()
            //                //                        }
            //                //                        .frame(maxWidth:.maximum(10,411),alignment:.leading)
            //                //                        .padding(.top,-9)
            //                //
            //                //
            //                //
            //                //                        VStack(spacing:5){
            //                //                            Text(".Having a valid permit")
            //                //                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
            //                //                                .padding(.top,-16)
            //                //                            Text(".To be fully qualified to use the drone")
            //                //                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
            //                //                                .padding(.top,14)
            //                //                            Text(".Preserving public property")
            //                //                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
            //                //                                .padding(.top,14)
            //                //                            Text(".Strict adherence to security instructions")
            //                //                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
            //                //                                .padding(.top,14)
            //                //
            //                //                        }
            //                //                        .frame(maxWidth:.maximum(10,330),alignment:.leading)
            //                //
            //                //                    }
            //                //
            //                //                    .padding(.top,100)
            //                //
            //                //
            //                //
            //                //
            //                //                    ZStack{
            //                //                        VStack(spacing:5){
            //                //                            HStack{
            //                //
            //                //                                Image(systemName:"checkmark.square")
            //                //
            //                //                                Text("I undertake to assume all related  responsibilities in the event of a violation ofthe foregoing.")
            //                //
            //                //                                    .fontWeight(.bold)
            //                //                                    .font(.system(size: 16))
            //                //                                    .padding()
            //                //                            }
            //                //                        }
            //                //                    }
            //                //
            //                //
            //                //                    .frame(maxWidth:.maximum(10,401),alignment:.leading)
            //                //                    .padding(.top,360)
            //                //                    .padding()
            //                //
            //                //                    VStack(alignment: .leading, spacing: 5){
            //                //
            //                //
            //                //                        Text("Enter Service Value Offer")
            //                //                            .frame(maxWidth:.maximum(10,290),alignment:.center)
            //                //                            .padding(.leading, -10)
            //                //
            //                //                        TextField("   200 SAR  ", text: $price)
            //                //
            //                //                            .background(Color("btnColor"))
            //                //                            .cornerRadius(8)
            //                //                            .frame(width: 97, height: 33)
            //                //                            .frame(maxWidth:.maximum(10,190),alignment:.leading)
            //                //                            .padding(.leading, 92)
            //                //
            //                //                    }
            //                //                    .padding(.top,553)
            //                //
            //                //
            //                //                    //           ZStack{
            //                //                    Button {
            //                //                        guard let providerID = Auth.auth().currentUser?.uid else {
            //                //                            print("user not logged in, and this whole view shouldn't appear")
            //                //                            return
            //                //                        }
            //                //                        showpage.toggle()
            //                //
            //                //
            //                //                        viewModel.addPrice( providerID: providerID, price: price, offerStatus:.new)
            //                //
            //                //                    } label: {
            //                //                        Button(action:{}){
            //                //                            Text("Send")
            //                //                                .foregroundColor(.white)
            //                //                                .bold()
            //                //                                .frame(width: 342, height: 41.31)
            //                //                                .cornerRadius(8)
            //                //                                .background(Color("btnColor"))
            //                //                                .cornerRadius(8)
            //                //                                .padding(.top,770)
            //                //                        } .fullScreenCover(isPresented: $showpage, content: {  successpremit()})
            //                //
            //                //
            //                //
            //                //
            //                //
            //                //
            //                //
            //                //                            .navigationTitle("order details")
            //                //                            .navigationBarTitleDisplayMode(.inline)
            //                //                    }
            //                //
            //                //                }
            //                //            }
            //                //
            //                //        }
            //
            //            }
            //        }
            
            
        }
        
    }
}
    
    
    //
    struct orderdetailsowner_Previews: PreviewProvider {
        static var previews: some View {
            orderdetailsowner(myOrder: OrderForFeed(order: Order(dictionary: [:]), user: User(dictionary: [:]), orderID: ""))
                .preferredColorScheme(.dark)
            
        }
    }
    
    
    
    //}


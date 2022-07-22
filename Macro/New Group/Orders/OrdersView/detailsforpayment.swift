//
//  detailsforpayment.swift
//  Macro
//
//  Created by sumayah on 17/12/1443 AH.
//



import SwiftUI
import FirebaseAuth
//provider
//not organizetion

struct detailsforpayment: View {
    
    let myOrder : OrderForFeed
   @StateObject var viewModel: custumerOrder = custumerOrder()
    @State var showpage = false
    @State private var price: String =  String()
    
    @State private var checkbox1: Bool = false
    @State private var checkbox2: Bool = false
    //    let myOrder : Offers
//    @StateObject var cartManager = CartManager()

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
                        
                        Image(" ")
                        Image(" ")
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
                            Text("\(myOrder.order.detailedTimestampString)")
                        }
                        HStack{
                            AsyncImage(url:  URL(string: myOrder.user.profilePic)){ image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:70,height: 70)
                                    .clipShape(Circle())
                            }placeholder: {
                                ProgressView()
                            }
                            .padding(.leading,50)
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
//                    viewModel.showOffers(orderID: myOrder.orderID, status: myOffer.offerStatus) { offer in
                        
//                    }
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
            
       
            
            
        }
        
    }
}
    
    
 
struct detailsforpayment_Previews: PreviewProvider {
    static var previews: some View {
        detailsforpayment(myOrder: OrderForFeed(order: Order(dictionary: [:]), user: User(dictionary: [:]), orderID: ""))
    }
}
    
    //}


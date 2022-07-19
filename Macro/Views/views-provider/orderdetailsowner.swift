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
   @StateObject var viewModel: custumerOrder = custumerOrder()
    @State var showpage = false
    @State private var checked = true
    @State private var price: String =  String()
    //    let myOrder : Offers
    
    
    var body: some View {
        
        ScrollView{
//                           Color.them.myColor1.ignoresSafeArea()

            ZStack{
                VStack(alignment: .leading, spacing: 10){
                   // Image("")
                  //  .resizable()
                  //  .background(Color.them.myColor2)
                    Rectangle()
                        .background(.black).opacity(0.2)
                        .cornerRadius(8)
                        .frame(width: 349, height: 327)
                }
               .padding(.top,-300)
                VStack(spacing:11){
                    VStack(spacing:10){
                        AsyncImage(url:  URL(string:myOrder.user.profilePic)){ image in
                            image.resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:70,height: 70)
                                .clipShape(Circle())
                        }placeholder: {
                            ProgressView()
                        }
//                        Image("profileimage2")
//                            .resizable()
//                            .frame(width: 150, height: 150)
                        //    Image("ORDER2")
                        Text("\(myOrder.user.fullName)").foregroundColor(.white).font(.caption)
                    
                    }
                 //   .padding()
                    
                    Section{
                        HStack{
                            Text("City     :")
                            Text("\(myOrder.order.city)").foregroundColor(.white)
                        }
                        HStack{
                            Text("Date    :")
                            Text("\(myOrder.order.detailedTimestampString)").foregroundColor(.white)
                        }
                        HStack{
                            Text("Hours  :")
                            Text("\(myOrder.order.Hours)").foregroundColor(.white)
                        }
                        
                        VStack(spacing:8){
                            Text("Description :")
                                .frame(maxWidth:.maximum(10,314),alignment:.leading)
                            Text("\(myOrder.order.description)").foregroundColor(.white)
                        }
                    }
                    .frame(maxWidth:.maximum(10,314),alignment:.leading)
                }
                .padding(.top,-300)
                
                ZStack{
                    VStack(spacing:8){
                        HStack{
                            
                            Image(systemName:"checkmark.square").foregroundColor(.white)
                            Text("When accepting the request, I promise:")
                                .fontWeight(.bold)
                                .font(.system(size: 16))
                        }
                        .padding(.bottom)

                        .frame(width: 350, height: 70, alignment: .leading)
                       // .padding(.top,200)
                        
                        
                        
                        VStack(spacing:5){
                            Text(".To Have a valid permit")
                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
                                .font(.subheadline)
                             //   .padding(.top,-16)
                            Text(".To be fully qualified to use the drone")
                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
                                .font(.subheadline)
                                .padding(.top,14)
                            Text(".Preserve public property")
                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
                                .padding(.top,14)
                                .font(.subheadline)
                            Text(".Strict adherence to security instructions")
                                .frame(maxWidth:.maximum(10,390),alignment:.leading)
                                .padding(.top,14)
                                .font(.subheadline)

                            
                        }
                        .padding(.top, 30)
                        .frame(width: 350, height: 70, alignment: .leading)

                    }
                    
                    .padding(.top,180)
                    
                    
                        HStack{
                                
                               Image(systemName:"checkmark.square")
                                
                                Text("I undertake all related responsibilities in the event of a violation ofthe foregoing.")
                                
                                    .fontWeight(.bold)
                                    .font(.system(size: 16))
                            }
                       //     .padding(.top)
                            .frame(width: 350, alignment: .leading)
                        
                    
                    
                    
               //     .frame(maxWidth:.maximum(10,401),alignment:.leading)
                   .padding(.top,500)
                   // .padding()
                    
                    VStack(alignment: .center, spacing: 5){
                        
                        
                        Text("Enter Service Value Offer")
                          //  .frame(maxWidth:.maximum(10,290),alignment:.center)
                            .padding(.top, 50)
                        
                        TextField("   200 SAR  ", text: $price)
                        
                            .background(Color("btnColor"))
                            .cornerRadius(8)
                            .frame(width: 97, height: 33)
                            .frame(maxWidth:.maximum(10,190),alignment:.leading)
                            .padding(.leading, 92)
                        
                    }
                    .padding(.top, 580)
                                        
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

    //
    struct orderdetailsowner_Previews: PreviewProvider {
        static var previews: some View {
            orderdetailsowner(myOrder: OrderForFeed(order: Order(dictionary: [:]), user: User(dictionary: [:]), orderID: ""))
                .preferredColorScheme(.dark)


            
        }
    }
    
    
    
    //}


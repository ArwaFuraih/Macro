//
//  offerCellC.swift
//  Macro
//
//  Created by sumayah on 05/12/1443 AH.
//

import SwiftUI
import FirebaseAuth
import Kingfisher


struct offerCellC: View {
    @StateObject var m: custumerOrder
    let selectedFilter: OrderCustFilter
    var allServies: Servies
    @StateObject var cartManager = CartManager()
    @State var showSheet = false
    @State var showSheet1 = false
    @State var offers: Offers? = nil
    @State var order: OrderForFeed? = nil
    @State var offer: OfferForFeed? = nil
    @ObservedObject private var viewModel = custumerOrder()

  
    
    var imageUrl = URL(string: "https://img.freepik.com/free-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000")
    
    var body: some View {
        VStack{

           // ForEach(m.listOffers){ index in
            ForEach(m.getFeed(forfilter: selectedFilter)){ index in
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.them.myColor2)
                    
                        .frame(width: 400, height: 191)
                        .cornerRadius(8)
                    
                    
                
                    
                    
                    VStack(alignment: .leading, spacing: 2){
                        HStack{
                            AsyncImage(url:  URL(string:index.user.profilePic)){ image in
                                image.resizable()
                                    .padding(.trailing,100)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width:70,height: 70)
                                    .clipShape(Circle())
                            }placeholder: {
                                ProgressView()
                            }
                            
                            
                            Text("\(index.user.fullName)").foregroundColor(.white)
//                                .padding(.trailing,10)
                                .font(.system(size: 16, weight: .bold, design: .rounded)).padding(.top,10)
                                
                            
                            
                            
                        }.padding(.leading,30)
                        
                       


                        
                        
                        Group{
                        
                            
                         
                            HStack{
                            Text("Hours: ")//index.
                                .foregroundColor(.white).font(.system(size: 12, weight: .bold, design: .rounded))
                            
                            
                            Text("\(index.order.Hours )")//index.
                                .foregroundColor(.white).font(.system(size: 12, weight: .regular, design: .rounded))
                            }
                            HStack{
                            Text("Price: ")//index.
                                .foregroundColor(.white).font(.system(size: 12, weight: .bold, design: .rounded))
                            
                            Text("\(index.offer.price ) ")//index.
                                .foregroundColor(.white).font(.system(size: 12, weight: .regular, design: .rounded))
                                //.padding(.bottom,20)
                            
                            
                            Text("SR")//index.
                                .foregroundColor(.white).font(.system(size: 12, weight: .regular, design: .rounded))
                            }.padding(.bottom,10)
                            //
                            //                            Text("\(index.user.fullName)").foregroundColor(.white).font(.system(size: 12, weight: .regular, design: .rounded))
                            
                        }.padding(.leading,30)
                            
                        
                        
                        HStack( spacing: 130){
                            
                            
                            
                            
                            Button {
                                offer = index
                                showSheet.toggle()
                                let docID = index.offerID
                                guard !docID.isEmpty else {
                                    print("Could not get offer ID")
                                    return
                                }
                                m.changeOfferStatus(documentID:docID, status: .accepted)
                            } label: {
                                Text("Accept".uppercased())
                                    .font(.system(size: 16, weight: .regular, design: .rounded))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .frame(width: 108, height: 28)
                                    .background(
                                        Color.them.btnColor
                                            .cornerRadius(8)
                                            .shadow(radius: 8)
                                    ).fullScreenCover(item: $offer) { offer in
                                        paymentOrder(myOffer: offer, allserves: serviesList[0])
                                        CartView(offerID:index.offerID)
                                            .environmentObject(cartManager)
                                        
                                    }
                            }.onAppear() {
                                cartManager.addToCart(allServies: serviesList[1])
                              }
                            
                            
                            
                            Button {
                                showSheet.toggle()
                                let docID = index.offerID
                                guard !docID.isEmpty else {
                                    print("Could not get offer ID")
                                    return
                                }
                                m.changeOfferStatus(documentID:docID, status:.rejected)
                            } label: {
                                Text("Reject".uppercased())
                                    .font(.system(size: 16, weight: .regular, design: .rounded))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .frame(width: 101, height: 28)
                                    .background(
                                        Color.them.btnColor
                                            .cornerRadius(8)
                                            .shadow(radius: 8)
                                    )
                                
                                    .fullScreenCover(isPresented:$showSheet , content: {MyTab()})
                                
                            }
                            
                            
                            
                            
                            
                            
                            
                        }.padding(.leading,30)
                            .padding(.bottom, 20)
                        
                        
                    }.frame( maxWidth: 400, alignment:.leading)
                        .padding(.top,10)
                    
                    
                    
                }
                .background(Color.them.myColor2)
                .cornerRadius(8)
                .padding()
                
                
                
            }
            
          
            
        }

    }
}
struct offerCellC_Previews: PreviewProvider {
    static var previews: some View {
        offerCellC(m: custumerOrder(), selectedFilter: .Offers, allServies: serviesList[0])
            .environmentObject(CartManager())
    }
}

//
//  paymentOrder.swift
//  Macro
//
//  Created by sumayah on 17/12/1443 AH.
//


import SwiftUI
import FirebaseAuth

//user
// organization

struct paymentOrder: View {
    
    let myOffer : OfferForFeed
    @StateObject var viewModel: custumerOrder = custumerOrder()
    @StateObject var cartManager = CartManager()

    var allserves:Servies

    @State var showpage = false
    @State private var price: String =  String()
    //    let myOrder : Offers
    @State private var checkbox1: Bool = false
    @State private var checkbox2: Bool = false
    
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                VStack{
                    VStack{
                        ZStack {
                            ScrollView(showsIndicators: false){
                                VStack(alignment: .leading){
                                    ZStack{
                                        HStack{
                                            HStack {
                                                
                                                AsyncImage(url:  URL(string: myOffer.user.profilePic)){ image in
                                                    image.resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width:70,height: 70)
                                                        .clipShape(Circle())
                                                }placeholder: {
                                                    ProgressView()
                                                }.padding(.leading,50)
                                                
                                                //                         Image("44")
                                                //                        .resizable()
                                                //                        .background(Color.them.myColor2)
                                                //                        .cornerRadius(50)
                                                //                        .frame(width: 100, height: 100)
                                                //                        .foregroundColor(.white)
                                            }
                                            HStack {
                                                VStack(alignment: .leading, spacing: 6){
                                                    Text("Servece Owner : ")
                                                        .font(.system(size: 18))
                                                        .fontWeight(.bold)
                                                        .foregroundColor(.white)
                                                    Text("\(myOffer.user.fullName)")
                                                        .font(.title3)
                                                        .fontWeight(.regular)
                                                        .foregroundColor(.white)
                                                    
                                                }
                                            }
                                        }
                                        .frame(maxWidth:.infinity,alignment:.leading)
                                        .padding(.top, -199)
                                        .padding()
                                        
                                        VStack(alignment: .leading, spacing: 6){
                                            Text("Date and Time : ")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            
                                            Text("\(myOffer.order.detailedTimestampString)   \(myOffer.order.detailedTimestampStringTime)")
                                                .font(.title3)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                            
                                        }
                                        .frame(maxWidth:.infinity,alignment:.leading)
                                        .padding(.bottom, 120)
                                        .padding()
                                        
                                        VStack(alignment: .leading, spacing: 6){
                                            Text("Hours : ")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            
                                            Text("\(myOffer.order.Hours)")
                                                .font(.title3)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                        }
                                        .frame(maxWidth:.infinity,alignment:.leading)
                                        .padding(.bottom, -5)
                                        .padding()
                                        
                                        VStack(alignment: .leading, spacing: 6){
                                            Text("City : ")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            
                                            Text("\(myOffer.order.city)")
                                                .font(.title3)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                        }
                                        
                                        .frame(maxWidth:.infinity,alignment:.leading)
                                        .padding(.top, 120)
                                        .padding()
                                        
                                        VStack(alignment: .leading, spacing: 6){
                                            Text("Description : ")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            
                                            Text("\(myOffer.order.description)")
                                                .font(.title3)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                        }
                                        
                                        .frame(maxWidth:.infinity,alignment:.leading)
                                        .padding(.top, 240)
                                        .padding()
                                        
                                        VStack(alignment: .leading, spacing: 6){
                                            Text("Letter : ")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            
                                            
                                            Text("\(myOffer.order.Letter)")
                                                .font(.title3)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                        }
                                        .frame(maxWidth:.infinity,alignment:.leading)
                                        .padding(.top, 360)
                                        .padding()
                                        
                                        VStack(alignment: .leading, spacing: 6){
                                            Text("Pilot Name  : ")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            
                                            Text("\(myOffer.order.pilot)")
                                                .font(.title3)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                        }
                                        .frame(maxWidth:.infinity,alignment:.leading)
                                        .padding(.top, 476)
                                        .padding()
                                    }
                                }
                                .padding(.top, -80)
                            }
                        }
                        .padding()
                        .frame(width: 373, height: 399)
                        .background(Color.them.myColor2)
                        .cornerRadius(10)
                    }
                    .padding()
                    ScrollView(showsIndicators: false) {
                        ZStack {
                            VStack{
                                VStack(alignment: .leading, spacing: 8){
                                    HStack{
                                        Text("Service value : ")
                                            .font(.system(size: 18))
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                        Spacer()
                                        Text("\(myOffer.offer.price)")
                                            .font(.title3)
                                            .fontWeight(.regular)
                                            .foregroundColor(.white)
                                    }
                                    HStack{
                                        Text("Added tax : ")
                                            .font(.system(size: 18))
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                        Spacer()
                                        
                                        Text("100")
                                            .font(.title3)
                                            .fontWeight(.regular)
                                            .foregroundColor(.white)
                                        
                                    }
                                    
                                    
                                    VStack(alignment: .leading, spacing: 30){
                                        HStack{
                                            Text("Total price : ")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                            Spacer()
                                            Text("\(myOffer.order.Price)")
                                            
                                            //             Text("222 RS")
                                                .font(.title3)
                                                .fontWeight(.regular)
                                                .foregroundColor(.white)
                                            
                                        }
                                    }
                                }
                                VStack(spacing: 28){
                                    HStack{
                                        Toggle(isOn: $checkbox1) {
                                            Text("When accepting the request,\n I promise")
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white).font(.system(size: 16))
                                                .frame(maxWidth:.infinity,alignment:.leading)
                                        }
                                        .toggleStyle(CheckBoxToggleStyle(isreversed: true))
                                    }
                                    HStack{
                                        Toggle(isOn: $checkbox2) {
                                            Text("If order is canceled after payment,\n 5% of the total amount of the service will be deducted before returning it .")
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white).font(.system(size: 16))
                                                .frame(maxWidth:.infinity,alignment:.leading)
                                        }
                                        .toggleStyle(CheckBoxToggleStyle(isreversed: true))
                                    }
                                }
                            }
                        }
                        .padding()
                        .frame(maxWidth:.infinity,alignment:.leading)
                    }
                    .padding()
                    .background(Color.them.myColor2)
                    .cornerRadius(10)
                    .padding()
                    
                    
                    
                }.onAppear(perform: {
                    
                        cartManager.addToCart(allServies: serviesList[0])
                   
                })
                .padding(.top,-54)
            }
        }.navigationTitle("Order details ")
            .navigationBarTitleDisplayMode(.inline)
        
    }
}


struct paymentOrder_Previews: PreviewProvider {
    static var previews: some View {
        paymentOrder(myOffer: OfferForFeed(offer: Offers(dictionary: [:], documentID: ""), user: User(dictionary: [:]), order: Order(dictionary: [:]), offerID: ""), allserves: serviesList[0])
            .preferredColorScheme(.dark)
    }
}



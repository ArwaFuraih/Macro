//
//  offerCellP.swift
//  Macro
//
//  Created by sumayah on 04/12/1443 AH.
//

import SwiftUI
import Kingfisher

struct offerCellP: View {
//    @State private var selectedFilter:OrderCustFilter = .Offers
    @StateObject var m: custumerOrder
    let selectedFilter: OrderCustFilter

//    @StateObject var m: custumerOrder = custumerOrder()
    //@State var showSheet = false
    @State var order: OrderForFeed? = nil
    
    
    var imageUrl = URL(string: "https://img.freepik.com/free-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000")
    var name = "sumayah zaid "
    
    var body: some View {
        VStack{
            ForEach(m.orders){ item in
            HStack(spacing:10){
               
                    
                    HStack(){
                        VStack(){
                            KFImage(URL(string: User.profileImg))
                            AsyncImage(url: imageUrl){ image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(50)
                            }placeholder: {
                                ProgressView()
                            }
                            
                            Text("\(item.user.fullName)").foregroundColor(.white)
                        }.frame( maxWidth: .infinity, alignment:.leading)
                        
                        
                        
                        
                        
                        
                    }.padding().cornerRadius(8)
                
                
                HStack() {
                    VStack(alignment: .leading){
                        Text("Piolt:\(item.order.pilot)")
                            .font(.caption).bold()
                            .foregroundColor(.white)
                        Text("Hours:\(item.order.Hours)")
                            .font(.caption).bold()
                            .foregroundColor(.white)
                        
                        Text("Date: \(item.order.detailedTimestampString)")
                            .font(.caption).bold()
                            .foregroundColor(.white)
                        Text("\(item.order.nameOfServece.rawValue)").padding(.top,2)
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                    }
                    Spacer()
                    
                    
                    
                }
                
                HStack {
                    
                    Button(action: {
                        order = item

                        //showSheet.toggle()
                   
                   
                   print("g")
               }, label: {
                   Image("chevron order.right.2")
               })
               .padding(.top,70)
               .fullScreenCover(item: $order) { order in
                   orderdetailsowner(myOrder: order)
               }
                    
               .padding()
               .background(Color.them.myColor2)
               .cornerRadius(8)
               .padding()
                    
                }
                
                
                
            }.background(Color.them.myColor2)
                    .cornerRadius(8)
                    .padding()
                
                
            }
            
            
        }
    }}

struct offerCellP_Previews: PreviewProvider {
    static var previews: some View {
        offerCellP(m: custumerOrder(), selectedFilter: .Orders )
    }
}
                             

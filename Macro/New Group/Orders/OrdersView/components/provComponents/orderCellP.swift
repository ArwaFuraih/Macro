//
//  orderCellP.swift
//  Macro
//
//  Created by sumayah on 05/12/1443 AH.
//

import SwiftUI



struct orderCellP: View {
    @StateObject var m: custumerOrder
    let selectedFilter: OrderCustFilter
    
    var phoneNumber = "533-555-5555"

    
//    @StateObject var m: custumerOrder = custumerOrder()

    @State var showSheet = false
    var imageUrl = URL(string: "https://img.freepik.com/free-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000")
    
    var body: some View {
        VStack{
           
            ForEach(m.getFeed(forfilter: selectedFilter)){item in

//                ForEach(m.orders){ item in

            HStack(spacing:10){
                    
                

            HStack(){
                VStack(){
                    AsyncImage(url:  URL(string:item.user.profilePic)){ image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width:70,height: 70)
                            .clipShape(Circle())
                    }placeholder: {
                        ProgressView()
                    }
                    
                    Text(" \(item.user.fullName)").foregroundColor(.white)
                }.frame( maxWidth: 300, alignment:.leading)
               
                
                
                
          
               
            }.cornerRadius(8)
                
                
                HStack() {
                    VStack(alignment: .leading){
                        Text("Piolt:\(item.order.pilot)")
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                        Text("Hours:\(item.order.Hours)")
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                        HStack{
                            
                        Text("Date:")
                                .font(.subheadline).bold()
                            .foregroundColor(.white)
                            Text("\(item.order.detailedTimestampString)")
                                .font(.caption).bold()
                                .foregroundColor(.white)
                            
                        }
                        
                        Text("\(item.order.nameOfServece.rawValue)").padding(.top,2)
                            .font(.caption)
                            .foregroundColor(.gray)
             
                    }
                    Spacer()
             
                    
                     
                }
                HStack {
                   
                    Button(action: {
                        let phone = "tel://"
                                       let phoneNumberformatted = phone + phoneNumber
                                       guard let url = URL(string: phoneNumberformatted) else { return }
                                       UIApplication.shared.open(url)
                         
                            showSheet.toggle()


                            print("g")
                                   }, label: {
                                       Image(systemName: "phone.fill")
                                           .foregroundColor(.white)
                               }).padding(.bottom,70)
                        
                }
                   
                    
                    NavigationLink(isActive: $showSheet,
                                   destination: {
    //                    orderdetailsowner()
                        LoadingView()

                    },

                    label:
                        EmptyView.init)
     
           
            }.padding()
            .background(Color.them.myColor2)
            .cornerRadius(8)
            .padding()
            
                }
            
        }
       
    }
    
    }
//}

struct orderCellP_Previews: PreviewProvider {
    static var previews: some View {
        orderCellP(m: custumerOrder(), selectedFilter: .Orders)
    }
}

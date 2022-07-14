//
//  OrdersCustView.swift
//  Macro
//
//  Created by sumayah on 06/12/1443 AH.
//

import SwiftUI

struct OrdersCustView: View {
    @StateObject var m: custumerOrder = custumerOrder()
    @State private var selectedFilter:OrderCustFilter = .Offers
    @Namespace var animation
    var body: some View {
        ZStack{
            Color.them.myColor1.ignoresSafeArea()
            VStack{
                OrdersFilrerBar
                
                if selectedFilter == .Orders {
                    OrdersCusView
                }else if selectedFilter == .Offers {
                    OfferCusView
                }
                
                
                Spacer()
            }
        }
        
    }
}

struct OrdersCustView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersCustView()
    }
}







extension OrdersCustView{
    var OrdersFilrerBar: some View {
        HStack{
            ForEach(OrderCustFilter.allCases,id:\.rawValue){ i in
                VStack{
                    Text(i.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == i ? .semibold : .regular)
                        .foregroundColor(selectedFilter == i ? .white : .gray)
                    
                    if selectedFilter == i{
                        Capsule()
                        .foregroundColor(Color(.white
                                                       ))
                        .frame( height: 3)
                        .matchedGeometryEffect(id: "filter", in: animation)
                    }else{
                        Capsule()
                        .foregroundColor(Color(.clear
                                                       ))
                        .frame( height: 3)
                    }
                }.onTapGesture {
                    withAnimation(.easeOut){
                        self.selectedFilter = i
                    }
            }
            
        }.overlay(Divider().offset(x: 0, y: 16))
    }
    }
    
    var OfferCusView : some View{
        ScrollView{
            LazyVStack{
//                ForEach(m.getFeed(forfilter: self.selectedFilter)){ _ in
                offerCellC(m: m, selectedFilter: self.selectedFilter).padding(.vertical)
//                    orderCellC()

//                }
            }
        }
    }
  
    var OrdersCusView : some View{
        ScrollView{
            LazyVStack{
//                ForEach(m.getFeed(forfilter: self.selectedFilter)){ _ in
                orderCellC(m: m, selectedFilter: self.selectedFilter).padding(.vertical)
//                    orderCellC()

//                }
            }
        }
    }
}

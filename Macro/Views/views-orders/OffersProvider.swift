//
//  Offers.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 14/11/1443 AH.
//


//providerSide

import SwiftUI
import FirebaseAuth
struct OffersProvider: View {
//    @StateObject var m: custumerOrdr = custumerOrdr()

//    var phoneNumber = "718-555-5555"
    
    @StateObject var authViewModel = AuthViewModel()

//    let columns: [GridItem] = [
//        GridItem(.flexible(), spacing: 4, alignment: nil)]
//    @State var selected = 1
    var body: some View {

        if((Auth.auth().currentUser?.uid) != nil && ((authViewModel.user?.isprovider) != nil)){
            
//            if ((authViewModel.user?.isprovider ) == false){
                offersCustomer()
          //  }
      //      else {
//                VStack {
//                    //segmantPicker
//                    Picker(selection: $selected, label: Text("Picker"), content: {
//                        Text("Orders").tag(1)
//
//                        Text("Offers").tag(2)
//
//                    })
//                        .background(Color("btnColor"))
//                        .cornerRadius(8)
//                        .padding()
//                        .pickerStyle(SegmentedPickerStyle())
//
//                 if selected == 1 {
//
//                     ForEach(m.orders)  { index in
//                                        LazyVGrid(columns: columns){
//
//                                            ZStack{
//
//                                                RoundedRectangle(cornerRadius: 8)
//                                                                .fill(Color.them.myColor2)
//                                                                .frame(width: 350, height: 150)
//                                                                .cornerRadius(8)
//                            //                                    .frame(width: 300, height: 00)
//                            //                                    .padding()
//
//
//
//
//
//                                                Button(action: {
//                                                               let phone = "tel://"
//                                                               let phoneNumberformatted = phone + phoneNumber
//                                                               guard let url = URL(string: phoneNumberformatted) else { return }
//                                                               UIApplication.shared.open(url)
//                                                    print("g")
//                                                              }) {
//                                                                  Image(systemName: "phone.fill.arrow.up.right").padding(.bottom,100).padding(.leading,270).foregroundColor(.white)
//                                                           }
//
//        //
//
//
//
//                                                HStack{
//                                                    VStack(alignment: .center){
//                                                                    Button(action: {
//                                                                        print("g")
//                                                                               }, label: {
//                                                                                   Image("\(index.user.profilePic)").clipShape(Circle()).padding(.bottom)
//
//                                                                               })
//
//                                                                Image("ORDER2")
//                                                        Text("\(index.user.fullName)").foregroundColor(.white).padding(.trailing)
//
//
//                                                                    }
//                                                    VStack(alignment: .leading){
//
//                                                        Text("Pilots : \(index.order.pilot)").foregroundColor(.white)
//
//                                                        Text("Hours :\(index.order.Hours)").foregroundColor(.white)
//
//                                                        Text("Date :\(index.order.timestamp)").foregroundColor(.white)
//
////                                                        Text("\(index.order.NameOfServece)").foregroundColor(.white)
//
//
//                                                                    }.padding(.trailing,19)
//
//                                                        }
//                                            }
//
//                                        }
//
//
//
//
//                                            }
//
//                                            }
//                    else{
//                        myOffers()
//                    }
//
//                    Spacer()
//
//
//                }
       //     }
        }
      
   

        
    }
}
    
        
        
        struct OffersProvider_Previews: PreviewProvider {
            static var previews: some View {
                OffersProvider()
                    .preferredColorScheme(.dark)

            }
        }
    
    
//struct myOffers :View {
//    @State var showSheet = false
//    @StateObject var m: custumerOrdr = custumerOrdr()
//
//    let columns: [GridItem] = [
//        GridItem(.flexible(), spacing: 4, alignment: nil)]
//
//    var body: some View {
//        ForEach(m.orders)  { index in
//
//        LazyVGrid(columns: columns){
//            ZStack{
//
//                RoundedRectangle(cornerRadius: 8)
//                                .fill(Color.them.myColor2)
//                                .frame(width: 350, height: 150)
//                                .cornerRadius(8)
//    //                                    .frame(width: 300, height: 00)
//    //                                   .padding()
//                Group{
//                    Button(action: {
//                        print("g")
//                               }, label: {
//                                   Image("chevron order.right.2").padding(.top,100).padding(.leading,295).foregroundColor(.white)
//
//
//                               })
//
//                }
//
//
//
//
//
//
//                HStack{
//                                VStack{
//                                Image("ORDER1")
//                                    Image("\(index.user.profilePic)").clipShape(Circle()).padding(.bottom)
//                                    Text("\(index.user.fullName)").foregroundColor(.white)
//
//
//                                    }
//                                VStack{
//
//                                    Text("Pilots : \(index.order.pilot)").foregroundColor(.white)
//
//                                Text("Hours :\(index.order.Hours)").foregroundColor(.white)
//
//                                    Text("           Date :\(index.order.timestamp)").foregroundColor(.white)
//
//                                    Text("      \(index.order.NameOfServece)").foregroundColor(.white)
//
//
//                                }.padding(.trailing,16)
//
//                }.padding()
//
//
//
//            }}
//        }
//
//
//
//
//
//
//
//    }
//}
//
//
//
//struct myOffers_Previews: PreviewProvider {
//    static var previews: some View {
//        myOffers()
//            .preferredColorScheme(.dark)
//
//    }
//}
       



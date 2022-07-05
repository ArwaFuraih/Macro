//
//  offerCellC.swift
//  Macro
//
//  Created by sumayah on 05/12/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct offerCellC: View {
    @StateObject var m: custumerOrdr = custumerOrdr()
    @State var showSheet = false
    @State var showSheet1 = false
    
    var imageUrl = URL(string: "https://img.freepik.com/free-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000")
    
    var body: some View {
        VStack{
//            ForEach(m.orders){index in
                
            
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.them.myColor2)
                
                    .frame(width: 400, height: 191)
                    .cornerRadius(8)
                
                
                VStack(alignment: .leading, spacing: 2){
                    AsyncImage(url: imageUrl){ image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .cornerRadius(50)
                    }placeholder: {
                        ProgressView()
                    }.padding(.leading,50)
                    
                    
                    Group{
                        Text("(index.user.fullName)").foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular, design: .rounded))
                        
                        Text("(index.order.Price) SR").foregroundColor(.white).font(.system(size: 12, weight: .regular, design: .rounded))
                        
                        Text("(index.order.Hours)").foregroundColor(.white).font(.system(size: 12, weight: .regular, design: .rounded))
                        
                    }.padding(.leading,30)
                    
                    
                    
                    HStack( spacing: 130){
                        //                                               Button(action: , label: ).padding(.trailing,40)
                        
                        NavigationLink {
                            HomeView()
                            
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
                                )                }
                        
                        Button(action: {
                            print("Reject")
                        }, label: {
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
                        })
                        
                        
                        
                        
                        
                    }.padding(.leading,30)
                        .padding(.top, 20)
                    
                    
                }.frame( maxWidth: 400, alignment:.leading)
                
                
                
            }
                    .background(Color.them.myColor2)
                    .cornerRadius(8)
                    .padding()
                
                
                
            }
        
//    }
//        .onAppear{
//                if let user =  Auth.auth().currentUser?.uid{
//                    m.fetchCureentUser(userID: user)}}
        
    }
}

struct offerCellC_Previews: PreviewProvider {
    static var previews: some View {
        offerCellC()
    }
}

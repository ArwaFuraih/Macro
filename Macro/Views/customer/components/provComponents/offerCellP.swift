//
//  offerCellP.swift
//  Macro
//
//  Created by sumayah on 04/12/1443 AH.
//

import SwiftUI

struct offerCellP: View {
    @StateObject var m: custumerOrdr = custumerOrdr()
    @State var showSheet = false
    
    var imageUrl = URL(string: "https://img.freepik.com/free-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000")
    var name = "sumayah zaid "
    var body: some View {
        
        HStack(spacing:10){
        
        HStack(){
            VStack(){
                AsyncImage(url: imageUrl){ image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .cornerRadius(50)
                }placeholder: {
                    ProgressView()
                }
                
                Text("Nwaf Ali").foregroundColor(.white)
            }.frame( maxWidth: 300, alignment:.leading)
           
            
            
            
      
           
        }.padding().cornerRadius(8)
            
            
            HStack() {
                VStack(alignment: .leading){
                    Text("Piolt:")
                        .font(.caption).bold()
                        .foregroundColor(.white)
                    Text("Hours:")
                        .font(.caption).bold()
                        .foregroundColor(.white)
                    Text("Date:")
                        .font(.caption).bold()
                        .foregroundColor(.white)
                    Text("photography").padding(.top,2)
                        .font(.caption)
                        .foregroundColor(.gray)
         
                }
                Spacer()
         
                
                 
            }
            HStack {
               
                Button(action: {
                     
                        showSheet.toggle()

                        print("g")
                               }, label: {
                                   Image("chevron order.right.2")
                           }).padding(.top,70)
                    
            }
               
                
                NavigationLink(isActive: $showSheet,
                               destination: {
                    orderdetailsowner()
                },

                label:
                    EmptyView.init)
 
       
        }.padding()
            .background(Color.them.myColor2)
            .cornerRadius(8)
            .padding()
        
    }
}

struct offerCellP_Previews: PreviewProvider {
    static var previews: some View {
        offerCellP()
    }
}

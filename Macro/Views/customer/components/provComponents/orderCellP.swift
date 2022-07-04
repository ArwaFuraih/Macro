//
//  orderCellP.swift
//  Macro
//
//  Created by sumayah on 05/12/1443 AH.
//

import SwiftUI



struct orderCellP: View {
    @State var showSheet = false
    var imageUrl = URL(string: "https://img.freepik.com/free-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000")
    
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
           
            
            
            
      
           
        }.cornerRadius(8)
            
            
            HStack() {
                VStack(alignment: .leading){
                    Text("Piolt:kjjnjnjkn")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                    Text("Hours:3")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                    HStack{
                        
                    Text("Date:")
                            .font(.subheadline).bold()
                        .foregroundColor(.white)
                        Text("1-2-2203")
                            .font(.caption).bold()
                            .foregroundColor(.white)
                        
                    }
                    
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
                                   Image(systemName: "phone.fill")
                                       .foregroundColor(.white)
                           }).padding(.bottom,70)
                    
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

struct orderCellP_Previews: PreviewProvider {
    static var previews: some View {
        orderCellP()
    }
}

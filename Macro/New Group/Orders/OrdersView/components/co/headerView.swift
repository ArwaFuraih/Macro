//
//  headerView.swift
//  Macro
//
//  Created by sumayah on 12/12/1443 AH.
//

import SwiftUI

struct headerView: View {
    @Environment(\.presentationMode) var mode
    let title : String


    var body: some View {
        
        HStack(alignment: .center){
            HStack(alignment: .center, spacing: -23){
//                Button {
//                    mode.wrappedValue.dismiss()
//                } label: {
//                    Image(systemName: "chevron.backward")
//                        .resizable()
//                        .frame(width: 20, height: 34)
//                        .foregroundColor(.white)
//                        .offset(x: -21, y: -0)
//                        .padding()
//                }
//                Text("Back").font(.title3)
//                    .fontWeight(.semibold)
//                
//            }.padding(.trailing,10)
//               
//       
//              
//        
//            Spacer()
//                
                Text(title).font(.title2)
                    .fontWeight(.semibold)
//                    .padding(.trailing,150)
            
            
           
           
            
        }
        .frame( height: 120)
        .padding(.leading)
        .background(Color.them.myColor2)
        .foregroundColor(.white)
        .padding(.top,40)
      

        }
    }
}

struct headerView_Previews: PreviewProvider {
    static var previews: some View {
        headerView( title: "title")
    }
}

//
//  orderCellC.swift
//  Macro
//
//  Created by sumayah on 05/12/1443 AH.
//

import SwiftUI

struct orderCellC: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.them.myColor2)

                .frame(width: 400, height: 141)
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 3 ){
                HStack(spacing: 16 ){
                    Image( "servtype")
                    Text("NameOfServece")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)

                }.padding(.trailing, 140)
                HStack(spacing: 16 ){
                    Image( "clo").foregroundColor(.white)
                    Text("(index.order.time)")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)

                }
                HStack(spacing: 16 ){
                    Image("date")
                    Text("(index.order.date)")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                }

                HStack(spacing: 16 ){
                    Image("location")
                    Text("(index.order.time)")
                        .foregroundColor(.white)
                }

            }.padding(.trailing,78)

//            Spacer()
            ZStack{

                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.them.myColor2)
                    .cornerRadius(8)
                    .frame(width: 150, height: 139)
                    .background(Color.them.myColor2)
                    .shadow(color: .them.myColor1, radius: 1, x: 0, y: 1)
                    .padding(.leading,250)

                VStack(alignment: .leading){
                    Group{

                        Text("#998999").foregroundColor(.white)
                            .font(.system(size:12, weight: .regular, design: .rounded))
                        Text("(order.status)").foregroundColor(.green)
                            .font(.system(size:12, weight: .regular, design: .rounded))
                    }.padding(.leading,200)


                    Button(action: {
                        //                                                                      showSheet.toggle()

                        print("g")
                    }, label: {
                        Image("chevron order.right.2").padding(.leading,260).padding(.top, 10)


                    })
                    //                                                                  .fullScreenCover(isPresented: $showSheet, content: { Viewpermit()

                    //                                                                                             })




                }.padding(.leading,78)
                    .padding(.top,35)





            }



        }
            .background(Color.them.myColor2)
            .cornerRadius(8)
            .padding()
    }}



struct orderCellC_Previews: PreviewProvider {
    static var previews: some View {
        orderCellC()
    }
}

//
//  Argiculture.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 12/11/1443 AH.
//

import SwiftUI

struct Argiculture: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var showNewReq : Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.them.myColor1.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 10){
                       Image("droneArgiculture")
                    .resizable()
                   .frame(width:350, height: 300 , alignment: .center)
                    .cornerRadius(8)
                        .padding()
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle").foregroundColor(.white)
                .font(.system(size: 24))

                .frame(width: 60, alignment:.center)
            Text("Safer Way To Spray Crops").foregroundColor(.white)
                    }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle").foregroundColor(.white)
                .font(.system(size: 24))

                .frame(width: 60, alignment:.center)
        Text("Fast Data Acquisition For Accurate Farm Analysis").foregroundColor(.white)
                }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle").foregroundColor(.white)
                .font(.system(size: 24))

                .frame(width: 60, alignment:.center)
            Text("Allow Farmers To Obtain Crop Data Fast And Frequently"    ).foregroundColor(.white)
                
        }
        .padding()
                    }
                    Spacer()
                NavigationLink {
                    loading()
                } label: {
                    VStack{
                        Button {
                            showNewReq.toggle()
                        } label: {
                            Text("Request")
                                .foregroundColor(.white)
                                .bold()
                                .frame(width: 342, height: 41.31)
                                .cornerRadius(8)
                                .background(Color("btnColor"))
                                .cornerRadius(8)
                                .frame(maxWidth:.maximum(80,699),alignment:.center)
                        } .fullScreenCover(isPresented: $showNewReq, content: {NewRequest(myorder: OrderForFeed(order: Order(dictionary: [  :  ]), user: User(dictionary: [  :  ]), orderID: ""), allServies: serviesList[0])})
                            .environmentObject(CartManager())
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Text("Cancel")
                                .foregroundColor(.white)
                                .bold()
                                .frame(width: 342, height: 41.31)
                                .cornerRadius(8)
                                .background(Color("btnColor"))
                                .cornerRadius(8)
                                .frame(maxWidth:.maximum(80,699),alignment:.center)
                            
                            
                            
                        }
                    }
                }
                    
                    
        .navigationTitle("Argiculture")
        .navigationBarTitleDisplayMode(.inline)
 
                Spacer()
}
            }}
}
struct Argiculture_Previews: PreviewProvider {
    static var previews: some View {
        Argiculture()
       .preferredColorScheme(.dark)

    }
}
}


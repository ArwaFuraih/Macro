//
//  Photography.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 11/11/1443 AH.
//

import SwiftUI

struct Photography: View {
    @Environment(\.presentationMode) var presentationMode

    

 
    @State var showNewReq : Bool = false
    var body: some View {
        
        
        NavigationView{
            ZStack{
                Color.them.myColor1.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 10){
               
                       Image("Image")
                        .resizable()
                       .frame(width:350, height: 300 , alignment: .center)
                        .cornerRadius(8)
               // .frame(maxWidth:.maximum(80,699),alignment:.center)
                        .padding()
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle").foregroundColor(.white)
                .font(.system(size: 24))
                .frame(width: 60, alignment:.center)
        Text("Create video tours of the location").foregroundColor(.white)
            
                    }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle").foregroundColor(.white)
                .font(.system(size: 24))

        .frame(width: 60, alignment:.center)

        Text("Professional 4K camera drone.").foregroundColor(.white)
                }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle").foregroundColor(.white)
                .font(.system(size: 24))

                .frame(width: 60, alignment:.center)
        Text("Sets the standard for professional\n drone photography." ).foregroundColor(.white)
                
        }
        .padding()
                    }
                
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
          //  .padding(.top,-70)
        }
        .navigationTitle("Photography")
        .navigationBarTitleDisplayMode(.inline)
    
}
    }
    }
}
struct Photography_Previews: PreviewProvider {
    static var previews: some View {
        Photography()
       .preferredColorScheme(.dark)

    }
}


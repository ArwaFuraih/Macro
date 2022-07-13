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
            VStack(alignment: .leading, spacing: 10){
               
                       Image("Image")
                        .resizable()
                        .frame(width:350, height: 340)
                        .cornerRadius(8)
                .frame(maxWidth:.maximum(80,699),alignment:.center)

                        .padding()
                    Section{
        HStack(spacing:10){
        Image(systemName:"checkmark.circle")
                .font(.system(size: 24))
                .frame(maxWidth:.maximum(80,-299),alignment:.center)

        Text("Inspired by the dream of flight                    ")
            
                    }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle")
                .font(.system(size: 24))

        .frame(maxWidth:.maximum(80,-299),alignment:.center)

        Text("professional 4K camera drone                    ")
                }
        .padding()
                
        }
                    Section{
        HStack(spacing:10){
            Image(systemName:"checkmark.circle")
                .font(.system(size: 24))

        .frame(maxWidth:.maximum(80,-299),alignment:.center)

        Text("sets the standard for professional\n drone photography."    )
                
        }
        .padding()
                    }
                    Spacer()
                
                VStack{
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
//                     .padding(.top,-38)

                    }
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
                    } .fullScreenCover(isPresented: $showNewReq, content: {NewRequest()})

//                    Button { showNewReq.toggle()} label: {
//                        ZStack{
//                        Button(action:{}){
//                            Text("Request")
//                            .foregroundColor(.white)
//                            .bold()
//                            .frame(width: 342, height: 41.31)
//                            .cornerRadius(8)
//                            .background(Color("btnColor"))
//                            .cornerRadius(8)
//                     .frame(maxWidth:.maximum(80,699),alignment:.center)
////                     .padding(.top,-38)
//
//                        }
//                            NavigationLink(isActive: $showNewReq,
//                                           destination: {
//                                NewRequest()
//                            },
//
//
//                            label:
//                                EmptyView.init)
//
//
//
//
//
//
//                         }
//                    }
                }
                
               

                
                
//                NavigationLink {
//                    NewRequest()
////                    Settings()
//                } label: { }

              
            }
            .padding(.top,-70)
        }  
        .navigationTitle("Photography")
        .navigationBarTitleDisplayMode(.inline)
    
}
    
}
struct Photography_Previews: PreviewProvider {
    static var previews: some View {
        Photography()
       .preferredColorScheme(.dark)

    }
}

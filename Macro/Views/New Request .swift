//
//  New Request.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 13/11/1443 AH.
//


import SwiftUI
    struct NewRequest: View {
    @State private var stringOfTextField1: String =  String()
    @State private var stringOfTextField2: String =  String()
    @State private var stringOfTextField3: String =  String()
    @State private var stringOfTextField4: String =  String()
    @State private var stringOfTextField5: String =  String()
        var body: some View {
        NavigationView{
            
            ScrollView{
                VStack{

            VStack(alignment: .leading, spacing: 10){
    Text("                     Welcome Ahmed")
            .fontWeight(.bold)
            .font(.system(size: 16))
            .frame(maxWidth:.maximum(10,259),alignment:.center)

                        
            Text("City")
        TextField("Jeddah  ", text: $stringOfTextField1)
                        .padding()
    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
            .frame(width: 342.15, height: 66.86)
                    }
    //        .padding(.top,-80)

    //        .padding()
                    HStack{
                        HStack(spacing:10){
            Image(systemName:"checkmark.square")

                         Text("Company")
            .frame(maxWidth:.maximum(20,190),alignment:.leading)
                }

                        HStack{
                        
                        Image(systemName:"checkmark.square")
            .frame(maxWidth:.maximum(20,-195),alignment:.leading)

                             Text("Individual")
    //                        .padding()
                    }
                    }
                                                        .padding()

            VStack(alignment: .leading, spacing: 10){
                        Text("Date and Time")
                ZStack{
        TextField("1/1/2023 , Monday  ", text: $stringOfTextField2)
                        .padding()
        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
            .frame(width: 342.15, height: 66.86)
                    }
            }
            .padding()
        VStack(alignment: .leading, spacing: 10){
                Text("Add Descriotion")
            TextField("Covering the Jeddah season using drones  ", text: $stringOfTextField3)
                    .padding()
         .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
            .frame(width: 342.15, height: 66.86)
                            }
        .padding()
        VStack(alignment: .leading, spacing: 10){
                Text("Upload the letter, if available")
            TextField("  ", text: $stringOfTextField4)
                .padding()
        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
          .frame(width: 342.15, height: 66.86)
                                        }
        .padding()
            VStack(alignment: .leading, spacing: 10){
                Text("Add Pilot")
                TextField(" 4 pilots ", text: $stringOfTextField5)
                    .padding()
        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
            .frame(width: 342.15, height: 66.86)
                                                    }
                    
    //                    .padding()
                         Spacer()
                    NavigationLink {
                        loading()
                    } label: {
                        ZStack{
                       
                            Text("send Order")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 342, height: 41.31)
                            .cornerRadius(8)
                            .background(Color("btnColor"))
                            .cornerRadius(8)
        //                    .padding(.top,-40)

                      
                        }

                    }

    //                .padding()
    //                 Spacer()

                }
                .padding(.top,-80)
                
            }
            
       

                }
        
                .navigationTitle("New Request")
                .navigationBarTitleDisplayMode(.inline)
            }
    }
    
struct NewRequest_Previews: PreviewProvider {
    static var previews: some View {
        NewRequest()
            .preferredColorScheme(.dark)
    }
}
    
    

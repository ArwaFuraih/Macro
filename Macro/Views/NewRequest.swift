//
//  New Request.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 13/11/1443 AH.
//


import SwiftUI
    struct NewRequest: View {
        @State private var stringOfTextField: String =  String()
        var body: some View {
        NavigationView{
            
            VStack{

        VStack(alignment: .leading, spacing: 10){
Text("                     Welcome Ahmed")
        .fontWeight(.bold)
        .font(.system(size: 20))

                    
        Text("City")
    .fontWeight(.bold)
    TextField("Jeddah  ", text: $stringOfTextField)
                    .padding()
.overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
        .frame(width: 342.15, height: 66.86)
                }
                    
            HStack{
                Section{
        Image(systemName:"checkmark.square")
                     Text("Company")
//                        .padding()
                    
                    Image(systemName:"checkmark.square")
                         Text("Individual")
//                        .padding()

                }
                .padding()
            }
            
        VStack(alignment: .leading, spacing: 10){
                    Text("Date and Time")
            ZStack{
                    TextField("  ", text: $stringOfTextField)
                    .padding()
    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
        .frame(width: 342.15, height: 66.86)
                }
        }
        .padding()
    VStack(alignment: .leading, spacing: 10){
            Text("Add Descriotion")
        TextField("  ", text: $stringOfTextField)
                .padding()
     .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
        .frame(width: 342.15, height: 66.86)
                        }
    .padding()
    VStack(alignment: .leading, spacing: 10){
            Text("Upload the letter, if available")
        TextField("  ", text: $stringOfTextField)
            .padding()
    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
      .frame(width: 342.15, height: 66.86)
                                    }
    .padding()
        VStack(alignment: .leading, spacing: 10){
            Text("Add Pilot")
            TextField("  ", text: $stringOfTextField)
                .padding()
    .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
        .frame(width: 342.15, height: 66.86)
                                                }
                
                    .padding()
                     Spacer()
                ZStack{
                Button(action:{}){
                    Text("Sign Up")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 342, height: 41.31)
                    .cornerRadius(8)
                    .background(Color("btnColor"))
                    .cornerRadius(8)
                }
                }
                .padding()
                 Spacer()


                }
                .navigationTitle("New Request")
                .navigationBarTitleDisplayMode(.inline)
            }
    }
    }
struct NewRequest_Previews: PreviewProvider {
    static var previews: some View {
        NewRequest()
            .preferredColorScheme(.dark)
    }
}
    
    

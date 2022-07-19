//
//  customTextField.swift
//  Macro
//
//  Created by sumayah on 13/12/1443 AH.
//

import SwiftUI

struct customTextField: View {
    let placeholder:String
    let title :String
    var isSecureField:Bool? = false
    
    @Binding var text:String
    
    var body: some View {
        VStack(alignment: .leading, spacing: -10){
           
            Text("\(title)")
                .padding(.leading,10)
                .padding(.vertical)
                .foregroundColor(.gray)
            HStack{
              
                
                if isSecureField ?? false{
                    SecureField(placeholder,text: $text)
                        .foregroundColor(.gray)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0)
                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                        .frame(width: 342.15, height: 66.86)
                   
                }else{
                    TextField(placeholder,text: $text)
                        .foregroundColor(.gray)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8.0)
                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1))
                        )
                        .frame(width: 342.15, height: 66.86)

                }
            }
        }
    }
}

struct customTextField_Previews: PreviewProvider {
    static var previews: some View {
        customTextField(placeholder: "", title: "", isSecureField: false, text: .constant(""))
    }
}

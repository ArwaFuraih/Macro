//
//  Offers.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 14/11/1443 AH.
//


//providerSide

import SwiftUI

struct OffersProvider: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 4, alignment: nil)]
    @State var selected = 1
    var body: some View {
        VStack {
            //segmantPicker
            Picker(selection: $selected, label: Text("Picker"), content: {
                Text("Orders").tag(1)
    
                Text("Offers").tag(2)
    
            })
                .background(Color("btnColor"))
                .cornerRadius(8)
                .padding()
                .pickerStyle(SegmentedPickerStyle())

         if selected == 1 {
             ForEach(0..<5)  {item in
                                LazyVGrid(columns: columns){
                                    
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8)
                                                        .fill(Color.them.myColor2)
                                                        .frame(width: 350, height: 150)
                                                        .cornerRadius(8)
                    //                                    .frame(width: 300, height: 00)
                    //                                    .padding()
                                        Button(action: {
                                            print("g")
                                                   }, label: {
                                                       Image(systemName: "phone.fill").padding(.bottom,100).padding(.leading,270).foregroundColor(.white)

     //
                                        
                                                   })
                                        
                                      
                                            
                                   
                                        HStack{
                                                        VStack{
                                                        Image("ORDER1")
                                                        Image("ORDER2")
                                                            Text("Fahad Alrogay").foregroundColor(.white)
                                
                                
                                                            }
                                                        VStack{

                                                        Text("Pilots : 1").foregroundColor(.white)

                                                        Text("Hours :4").foregroundColor(.white)

                                                        Text("           Date :1 -1-2022").foregroundColor(.white)

                                                        Text("      Photography").foregroundColor(.white)


                                                            }.padding(.trailing,16)
                                            
                                                }
                                    }
                                    
                                }

                
                    
                    
                                    }
            
                                    }
            else{
                myOffers()
            }
            
            Spacer()

        
        }

        
    }
}
    
        
        
        struct OffersProvider_Previews: PreviewProvider {
            static var previews: some View {
                OffersProvider()
                    .preferredColorScheme(.dark)

            }
        }
    
    
struct myOffers :View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 4, alignment: nil)]
    
    var body: some View {
        List(0..<10)  { item in

        LazyVGrid(columns: columns){
            ZStack{
                
                RoundedRectangle(cornerRadius: 8)
                                .fill(Color.them.myColor2)
                                .frame(width: 350, height: 150)
                                .cornerRadius(8)
    //                                    .frame(width: 300, height: 00)
    //                                   .padding()
                Group{
                    Button(action: {
                        print("g")
                               }, label: {
                                   Image("chevron order.right.2").padding(.top,100).padding(.leading,295).foregroundColor(.white)
    
                    
                               })
                    
                }
               
               
              

                    
           
                HStack{
                                VStack{
                                Image("ORDER1")
                                Image("ORDER2")
                                    Text("Fahad Alrogay").foregroundColor(.white)
        
        
                                    }
                                VStack{

                                Text("Pilots : 1").foregroundColor(.white)

                                Text("Hours :4").foregroundColor(.white)

                                Text("           Date :1 -1-2022").foregroundColor(.white)

                                Text("      Photography").foregroundColor(.white)


                                }.padding(.trailing,16)
                    
                }.padding()
               
                
                
            }}
        }

       
        
        
                       
        
      
    }
}



struct myOffers_Previews: PreviewProvider {
    static var previews: some View {
        myOffers()
            .preferredColorScheme(.dark)

    }
}
       



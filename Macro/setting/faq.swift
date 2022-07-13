//
//  faq.swift
//  Macro
//
//  Created by najat ali on 16/11/1443 AH.
//

import SwiftUI

struct faq: View {
    @State private var isShowingone = false
    @State private var isShowingtwo = false
    @State private var isShowingthree = false
    @State private var isShowingfour = false
    
    //
    
    var body: some View {
        
      
            ScrollView(showsIndicators: false) {
                ZStack{
                    VStack{
                        VStack(alignment: .leading, spacing: 10) {
                            //
                            Button() {
                                withAnimation {
                                    isShowingone.toggle()
                                }
                            }
                            
                        label: {
                            HStack{
                                Text("How much is the registration fee for a drone?")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                Image(systemName: "ch.evron.down")
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                        }
                            
                            if isShowingone {
                                Text("Aircraft registration for non-recreational \n use (commercial) :\n 500 riyals. \n\n Aircraft registration for recreational use :\n 250 riyals. \n \nTest fees for obtaining an operating permit for non-recreational use (commercial) : \n500 riyals \n\n Issuing an operating permit for non-recreational use (commercial): \n300 riyals.\n\nPermit to operate the aircraft for   recreational purposes:\n Free")
                                    .font(.callout)
                                    .fontWeight(.regular)
                                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                                //                                     .frame(width: 200, height: 20)
                                Spacer()
                                Image(systemName: "ch.evron.down")
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                            
                        }
                        
                        .padding(.horizontal)
                        .padding(.vertical)
                        .foregroundColor(.white)
                        //                                  .frame(width: 342, height: 90)
                        .background(Color(red: 0.097, green: 0.102, blue: 0.111))
                        .cornerRadius(8)
                        .padding(.top)
                        
                        
                        VStack(alignment: .leading, spacing: 10) {
                            //
                            Button() {
                                withAnimation {
                                    isShowingtwo.toggle()
                                }
                            }
                            
                        label: {
                            HStack{
                                Text("Is it permissible to use the drone for personal or commercial uses?")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                Image(systemName: "ch.evron.down")
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                        }
                            
                            if isShowingtwo {
                                Text("Yes, both categories are allowed according \nto the following:\nThe personal use category is subject to Regulation 101H \n \nNon-recreational (commercial) uses are regulated and controlled by Regulation 107")
                                    .font(.callout)
                                    .fontWeight(.regular)
                                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                                //                                     .frame(width: 200, height: 20)
                                Spacer()
                                Image(systemName: "ch.evron.down")
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                            
                            
                        }
                        
                        
                        .padding(.horizontal)
                        .padding(.vertical)
                        .foregroundColor(.white)
                        //                                                  .frame(width: 342, height: 90)
                        .background(Color(red: 0.097, green: 0.102, blue: 0.111))
                        .cornerRadius(8)
                        .padding(.top)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            //
                            Button() {
                                withAnimation {
                                    isShowingthree.toggle()
                                }
                            }
                            
                        label: {
                            HStack{
                                Text("Is the permit issued by the General Authority of Civil Aviation sufficient\nor does it require the issuance of another permit from another government agency?")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                Image(systemName: "ch.evron.down")
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                        }
                            
                            if isShowingthree {
                                Text("The only authority that grants permission\nto operate a drone and grants a drone registration certificate in the Kingdom of Saudi Arabia is the General Authority\nof Civil Aviation.")
                                
                                    .font(.callout)
                                    .fontWeight(.regular)
                                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                                //                                     .frame(width: 200, height: 20)
                                Spacer()
                                Image(systemName: "ch.evron.down")
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                            
                            
                        }
                        
                        
                        .padding(.horizontal)
                        .padding(.vertical)
                        .foregroundColor(.white)
                        //                                                  .frame(width: 342, height: 90)
                        .background(Color(red: 0.097, green: 0.102, blue: 0.111))
                        .cornerRadius(8)
                        .padding(.top)
                        
                        
                        VStack(alignment: .leading, spacing: 10) {
                            //
                            Button() {
                                withAnimation {
                                    isShowingfour.toggle()
                                }
                            }
                            
                        label: {
                            HStack{
                                Text(" What is the method of scanning or registering drones that are purchased from electronic stores outside the Kingdom?")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                Image(systemName: "ch.evron.down")
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                        }
                            
                            if isShowingfour {
                                Text("The buyer can request the serial number directly from the seller and then apply for aircraft registration through the electronic platform of the Civil Aviation Authority. \n\nWhen the registration certificate is issued, the buyer keeps an electronic copy of the certificate to show to the customs upon entering the Kingdom.")
                                
                                    .font(.callout)
                                    .fontWeight(.regular)
                                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                                //                                     .frame(width: 200, height: 20)
                                Spacer()
                                Image(systemName: "ch.evron.down")
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 20, weight: .bold))
                            }
                            
                            
                        }
                        
                        
                        .padding(.horizontal)
                        .padding(.vertical)
                        .foregroundColor(.white)
                        //                                                  .frame(width: 342, height: 90)
                        .background(Color(red: 0.097, green: 0.102, blue: 0.111))
                        .cornerRadius(8)
                        .padding(.top)

                      
                        }
                    .padding(.top,-10).padding(.trailing,10).padding(.leading,10)
                    Spacer()
                 }
            }
            
            
            
            .navigationTitle("FAQ")
            .navigationBarTitleDisplayMode(.inline)
      
    }
}

struct faq_Previews: PreviewProvider {
    static var previews: some View {
        faq()
            .preferredColorScheme(.dark)
    }
}

//@State var first = ""
//    var firstq = "How much is the registration fee \n for a drone?"
//
//    var dropDownListfirst = ["Aircraft registration for non-recreational use  (commercial): \n 500 riyals Aircraft registration for recreational use: \n 250 riyals\n Test fees for obtaining an operating permit for non-recreational use (commercial): 500 riyals Issuing an operating permit for non-recreational use (commercial): 300 riyalsPermit to operate the aircraft for recreational purposes: Free "]
//
//    @State var second = ""
//     var secondq = "Is it permissible to use the drone for personal or commercial uses?"
//
//    var dropDownListsecond = ["Yes, both categories are allowed according to the following: The personal use category is subject to Regulation 101H Non-recreational (commercial) uses are regulated and controlled by Regulation 107"]
//
//@State var third = ""
// var thirdq = "Is the permit issued by the General Authority of Civil Aviation sufficient or does it require the issuance of another permit from another government agency?"
//
//var dropDownListthird = ["The only authority that grants permission to operate a drone and grants a drone registration certificate in the Kingdom of Saudi Arabia is the General Authority of Civil Aviation."]
//
//@State var foure = ""
//   var fourthq = " What is the method of scanning or registering “drones” that are purchased from electronic stores outside the Kingdom?"
//
//  var dropDownListforth = ["The buyer can request the serial number directly from the seller and then apply for aircraft registration through the electronic platform of the Civil Aviation Authority. When the registration certificate is issued, the buyer keeps an electronic copy of the certificate to show to the customs upon entering the Kingdom."]

//   Group{

//                         VStack(alignment: .leading, spacing: 10) {
//                                  Menu {
//                                     ForEach(dropDownListfirst, id: \.self){ client in
//                                               Button(client) {
//                                                   self.first = client
//                                               }
//                                           }
//                                       }
//                                           label: {
//                                           VStack(spacing: 5){
//                                               HStack{
//                                                   Text(first.isEmpty ? firstq : first)
//                                                       .font(.body)
//                                                       .fontWeight(.medium)
//                                                       .foregroundColor(first.isEmpty ? .white : .white)
//                                                       .multilineTextAlignment(.leading)
//                                                   Spacer()
//                                                   Image(systemName: "chevron.down")
//                                                       .foregroundColor(Color.white)
//                                                       .font(Font.system(size: 20, weight: .bold))
//                                               }
//                                               .padding(.horizontal)
//
//                                           }
//                                       }
//
//                                  .padding(.vertical)
//                                  .foregroundColor(.white)
//                                  .frame(width: 342, height: 90)
//                                 .background(Color(red: 0.097, green: 0.102, blue: 0.111))
//                                 .cornerRadius(8)
////
//
//                         }
//                         .padding(.top, 22.0)
//                         .padding()
//
//
//                         VStack(alignment: .leading, spacing: 10) {
//                                  Menu {
//                                     ForEach(dropDownListsecond, id: \.self){ client in
//                                               Button(client) {
//                                                   self.second = client
//                                               }
//                                           }
//                                       }
//                                           label: {
//                                           VStack(spacing: 5){
//                                               HStack{
//                                                   Text(second.isEmpty ? secondq : second)
//                                                       .font(.body)
//                                                       .fontWeight(.medium)
//                                                       .foregroundColor(second.isEmpty ? .white : .white)
//                                                       .multilineTextAlignment(.leading)
//                                                   Spacer()
//                                                   Image(systemName: "chevron.down")
//                                                       .foregroundColor(Color.white)
//                                                       .font(Font.system(size: 20, weight: .bold))
//                                               }
//                                               .padding(.horizontal)
//
//                                           }
//                                       }
//
//                                  .padding(.vertical)
//                                  .foregroundColor(.white)
//                                  .frame(width: 342, height: 90)
//                                 .background(Color(red: 0.097, green: 0.102, blue: 0.111))
//                                 .cornerRadius(8)
////
//
//                         }
//
//
//
//                         VStack(alignment: .leading, spacing: 10) {
//                                  Menu {
//                                     ForEach(dropDownListthird, id: \.self){ client in
//                                               Button(client) {
//                                                   self.third = client
//                                               }
//                                           }
//                                       }
//                                           label: {
//                                           VStack(spacing: 5){
//                                               HStack{
//                                                   Text(third.isEmpty ? thirdq : third)
//                                                       .font(.body)
//                                                       .fontWeight(.medium)
//                                                       .foregroundColor(third.isEmpty ? .white : .white)
//                                                       .multilineTextAlignment(.leading)
//                                                   Spacer()
//                                                   Image(systemName: "chevron.down")
//                                                       .foregroundColor(Color.white)
//                                                       .font(Font.system(size: 20, weight: .bold))
//                                               }
//                                               .padding(.horizontal)
//
//                                           }
//                                       }
//
//                                  .padding(.vertical)
//                                  .foregroundColor(.white)
//                                  .frame(width: 342, height: 145)
//                                 .background(Color(red: 0.097, green: 0.102, blue: 0.111))
//                                 .cornerRadius(8)
////
//
//                         }
//                          .padding()
//
//                         VStack{

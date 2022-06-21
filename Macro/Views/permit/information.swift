//
//  information.swift
//  Macro
//
//  Created by najat ali on 15/11/1443 AH.
//

import SwiftUI

struct information: View {
    @State private var stringOfTextField1: String = String()
    @State private var stringOfTextField2: String = String()
    @State private var stringOfTextField3: String = String()
    @State private var stringOfTextField4: String = String()
    @State private var stringOfTextField5: String = String()
    @State private var stringOfTextField6: String = String()
    @State private var stringOfTextField7: String = String()
    
    @State private var documentUrl: URL?
    @State private var isPickerPresented = false
    @State private var showDetails = false


    @State var selected = 1

      @State var hight = ""
        var placeholder = ""
        var dropDownListhight = ["100FT", "200FT", "300FT", "400FT", "500FT" , "More with reason "]

    @State var Duration = ""
        var Servisestime = ""
        var dropDownListDuration = ["Hours", "Day", "Week" , " Month", "More with reason"]
    
    @State var DateandTime = ""
    var datetime = ""
    var dropDownListDateandTime = [""]
    
    
    @State var polit = ""
    var politnumber = ""
    var dropDownListpolit = ["One Pilot" , "Two Pilot", "Three Pilot"  , "Four Pilot " , "More"]
 
    @State var Permit = ""
    var PermitType = ""
    var dropDownListPermit = ["Urgent", "Not urgent"]
    
    @State var Activity = ""
    var Activitytype = ""
    var dropDownListActivitytype = ["Photography", "Agriculturet", "Public Safety" , "Construction", "Energy" , "Oil & Gas and Mining"]
    
    var body: some View {
//        Color.them.myColor1.ignoresSafeArea()
//                   NavigationView{
                       ScrollView(showsIndicators: false){
                           ZStack{
                            VStack{
                             
                                Group{
                            VStack(alignment: .leading, spacing: 10) {
                               Text("Full Name")
                               TextField("Ahmad Ali  ", text: $stringOfTextField1)
                               .padding()
               .overlay(RoundedRectangle(cornerRadius: 8.0)
                   .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                               .frame(width: 342.15, height: 66.86)
                           }
       //                    .padding()

                           VStack(alignment: .leading, spacing: 10){
                               Text("National ID")
                               TextField("", text: $stringOfTextField2)
                               .padding()
                               .overlay(RoundedRectangle(cornerRadius: 8.0)
                                   .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                               .frame(width: 342.15, height: 66.86)
                           }
       //                    .padding()
                               
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Hight")
                                     Menu {
                                         ForEach(dropDownListhight.sorted(by: <), id: \.self){ client in
                                                    Button(client) {
                                                        self.hight = client
                                                    }
                                                }
                                            }
                                               label: {
                                                VStack(spacing: 5){
                                                    HStack{
                                                        Text(hight.isEmpty ? placeholder : hight)
                                                            .foregroundColor(hight.isEmpty ? .gray : .white)
                                                        Spacer()
                                                        Image(systemName: "chevron.down")
                                                            .foregroundColor(Color.white)
                                                            .font(Font.system(size: 20, weight: .bold))
                                                            
                                                    }
                                                    .padding(.horizontal)
                                                  
                                                }
                                            }
                                     .padding(.bottom)
                                     .padding()
                                     .overlay(RoundedRectangle(cornerRadius: 8.0)
                                     .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                     .frame(width: 342.15, height: 66.86)
                                
                                .padding(.bottom)
                                }
                                     if hight == dropDownListhight.last! {
       
                                        VStack(alignment: .leading, spacing: 10) {
                                            Text("Type the hight with reason below")
                                            TextField("", text: $stringOfTextField5)
                                            .padding()
                                       .overlay(RoundedRectangle(cornerRadius: 8.0)
                                       .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                             .frame(width: 342.15, height: 66.86)
                                        }
       
                                    } else {
                                        EmptyView()
                                    }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                    Text("Duration")
                                    Menu {
                                        ForEach(dropDownListDuration, id: \.self){ client in
                                                  Button(client) {
                                                      self.Duration = client
                                                  }
                                              }
                                          }
                                              label: {
                                              VStack(spacing: 5){
                                                  HStack{
                                                      Text(Duration.isEmpty ? Servisestime : Duration)
                                                          .foregroundColor(Duration.isEmpty ? .gray : .white)
                                                      Spacer()
                                                      Image(systemName: "chevron.down")
                                                          .foregroundColor(Color.white)
                                                          .font(Font.system(size: 20, weight: .bold))
                                                  }
                                                  .padding(.horizontal)
                                                 
                                              }
                                          }

                                              .padding(.bottom)
                                              .padding()
                                             .overlay(RoundedRectangle(cornerRadius: 8.0)
                                             .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                             .frame(width: 342.15, height: 66.86)
                                        
                            }
                                        .padding(.bottom)
                                    
                                    if Duration == dropDownListDuration.last! {
       
                                        VStack(alignment: .leading, spacing: 10) {
                                            Text("Type the duration with reason below")
                                            TextField("", text: $stringOfTextField6)
                                            .padding()
                                       .overlay(RoundedRectangle(cornerRadius: 8.0)
                                       .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                             .frame(width: 342.15, height: 66.86)
                                        }
       
                                    } else {
                                        EmptyView()
                                    }
       
                            

                                    VStack(alignment: .leading, spacing: 10) {
                                    Text("Date and Time")
                                    DatePicker(selection: .constant(Date()), label: {})
//                                   .datePickerStyle(.graphical)
                                    .foregroundColor(.orange)
                                     .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 8.0)
                                   .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                    .frame(width: 342.15, height: 66.86)
 
                                                
                                    }
                                           
       //                         .padding()
                               
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("license number")
                                    TextField("", text: $stringOfTextField3)
                                    .padding()
                      .overlay(RoundedRectangle(cornerRadius: 8.0)
                      .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                    .frame(width: 342.15, height: 66.86)
                                }
       //                         .padding()
                                }
                                Group{

                                    VStack(alignment: .leading, spacing: 10) {
                                    Text("Drones permit")
                                    
                                        TextField("", text: $stringOfTextField7)
                                        .padding()
                          .overlay(RoundedRectangle(cornerRadius: 8.0)
                          .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                        .frame(width: 342.15, height: 66.86)
                                    }
           //                         .padding()
                            
                           
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Upload the letter, if available")
                                    Button(){
                                    withAnimation {
                                        isPickerPresented.toggle()
                                     }
                                }
                                    
                                label: {
                                    HStack{
 
                                        Spacer()
                                        Image(systemName: "chevron.down")
                                            .foregroundColor(Color.white)
                                            .font(Font.system(size: 20, weight: .bold))
                                            .padding()
                                  }
                                }
                             
                                .padding()
                                .frame(width: 342.15, height: 66.86)
                                .overlay(RoundedRectangle(cornerRadius: 8.0)
                                    .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                }
                                .sheet(isPresented: $isPickerPresented) {
                                    DocumentPicker(url: $documentUrl)
                                }
                                    
                                    EmptyView()
                                        .sheet(item: $documentUrl) { url in
                                            PDFComponent(url: url)
                                            
                                            
                                        }   //                         .padding()
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("Activity type")
                                        Menu {
                                            ForEach(dropDownListActivitytype.sorted(by: <), id: \.self){ client in
                                                Button(client) {
                                                    self.Activity = client
                                                }
                                            }
                                        } label: {
                                            VStack(spacing: 5){
                                                HStack{
                                                    Text(Activity.isEmpty ? Activitytype : Activity)
                                                        .foregroundColor(Activity.isEmpty ? .white : .white)
                                                    Spacer()
                                                    Image(systemName: "chevron.down")
                                                        .foregroundColor(Color.white)
                                                        .font(Font.system(size: 20, weight: .bold))
                                                }
                                                .padding(.horizontal)
                                                
                                            }
                                        }
                                        
                                        .padding(.bottom)
                                        .padding()
                                        .overlay(RoundedRectangle(cornerRadius: 8.0)
                                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                        .frame(width: 342.15, height: 66.86)
                                    }
                                    
                                    .padding(.bottom)
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("Flying Description  ")
                                        TextField("", text: $stringOfTextField4)
                                            .padding()
                                            .overlay(RoundedRectangle(cornerRadius: 8.0)
                                                .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                            .frame(width: 342.15, height: 66.86)
                                    }
                                    //                        .padding()
                                    
                               VStack(alignment: .leading, spacing: 10) {
                                   Text("Permit Type")
                                   Menu {
                                       ForEach(dropDownListPermit.sorted(by: <), id: \.self){ client in
                                           Button(client) {
                                               self.Permit = client
                                           }
                                       }
                                   } label: {
                                       VStack(spacing: 5){
                                           HStack{
                                               Text(Permit.isEmpty ? PermitType : Permit)
                                                   .foregroundColor(Permit.isEmpty ? .white : .white)
                                               Spacer()
                                               Image(systemName: "chevron.down")
                                                   .foregroundColor(Color.white)
                                                   .font(Font.system(size: 20, weight: .bold))
                                           }
                                                   .padding(.horizontal)
                                                  
                                               }
                                           }

                                               .padding(.bottom)
                                               .padding()
                                              .overlay(RoundedRectangle(cornerRadius: 8.0)
                                              .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                              .frame(width: 342.15, height: 66.86)
                                         }
                                 
                              .padding(.bottom)
                               
                               VStack(alignment: .leading, spacing: 10) {
                                   Text("Add Pilot")
                                   Menu {
                                       ForEach(dropDownListpolit, id: \.self){ client in
                                           Button(client) {
                                               self.polit = client
                                           }
                                       }
                                   } label: {
                                       VStack(spacing: 5){
                                           HStack{
                                               Text(polit.isEmpty ? politnumber : polit)
                                                   .foregroundColor(polit.isEmpty ? .gray : .white)
                                               Spacer()
                                               Image(systemName: "chevron.down")
                                               .foregroundColor(Color.white)
                                                .font(Font.system(size: 20, weight: .bold))
                                       }
                                               .padding(.horizontal)
                                              
                                           }
                                       }

                                           .padding(.bottom)
                                           .padding()
                                          .overlay(RoundedRectangle(cornerRadius: 8.0)
                                          .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                          .frame(width: 342.15, height: 66.86)
                                     }
                               .padding(.bottom)
                            if polit == dropDownListpolit.last! {

                                   VStack(alignment: .leading, spacing: 10) {
                                       Text("Type their Names , ID , License number , Drones permit")
                                       TextField("", text: $stringOfTextField6)
                                       .padding()
                                  .overlay(RoundedRectangle(cornerRadius: 8.0)
                                  .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                        .frame(width: 342.15, height: 66.86)
                                   }

                               } else {
                                   EmptyView()
                               }
                                }
                                
                                
//                            switch dropDownListpolit {
//                            case "hjdkhjk" :
//                                    VStack(alignment: .leading, spacing: 10) {
//                                        Text("Type their Names , ID , License number , Drones permit")
//                                        TextField("", text: $stringOfTextField6)
//                                        .padding()
//                                   .overlay(RoundedRectangle(cornerRadius: 8.0)
//                                   .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
//                                         .frame(width: 342.15, height: 66.86)
//                                    }
//                                case 1:
//                               VStack(alignment: .leading, spacing: 10) {
//                                   Text("Type ")
//                                   TextField("", text: $stringOfTextField6)
//                                   .padding()
//                              .overlay(RoundedRectangle(cornerRadius: 8.0)
//                              .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
//                                    .frame(width: 342.15, height: 66.86)
//                               }
//                            case 2:
//
//                                Text("Type their Names , ID , License number , Drones permit")
//                     default:
//                                   Text("Keep Trying")
//
//                                    }
//                               if polit == dropDownListpolit.first! {
//
//                                   VStack(alignment: .leading, spacing: 10) {
//                                       Text("Type their Names , ID , License number , Drones permit")
//                                       TextField("", text: $stringOfTextField6)
//                                       .padding()
//                                  .overlay(RoundedRectangle(cornerRadius: 8.0)
//                                  .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
//                                        .frame(width: 342.15, height: 66.86)
//                                   }
//
//                               } else {
//                                   EmptyView()
//                               }
//                          
                                ZStack{
                                NavigationLink {
                                    Agree()
                                } label: {
                                    Text("Submit")
                                    .foregroundColor(.white)
                                    .bold()
                                    .frame(width: 342, height: 41.31)
                                    .cornerRadius(8)
                                    .background(Color("btnColor"))
                                    .cornerRadius(8)
                                
                                .disabled(stringOfTextField1.isEmpty || stringOfTextField2.isEmpty || stringOfTextField3.isEmpty || stringOfTextField4.isEmpty || stringOfTextField7.isEmpty || hight.isEmpty || Duration.isEmpty || polit.isEmpty || DateandTime.isEmpty || Permit.isEmpty || Activity.isEmpty)
                                }
                                }.padding()

                            
                           
//                           ZStack{
//                               Button {
//                                   showDetails.toggle()
//                           }
//                           label: {
//
//
//                               Text("Submit")
//                               .foregroundColor(.white)
//                               .bold()
//                               .frame(width: 342, height: 41.31)
//                               .cornerRadius(8)
//                               .background(Color("btnColor"))
//                               .cornerRadius(8)
//
//                           .disabled(stringOfTextField1.isEmpty || stringOfTextField2.isEmpty || stringOfTextField3.isEmpty || stringOfTextField4.isEmpty || stringOfTextField7.isEmpty || hight.isEmpty || Duration.isEmpty || polit.isEmpty || DateandTime.isEmpty || Permit.isEmpty || Activity.isEmpty)
//
//                           }.fullScreenCover(isPresented: $showDetails, content: {
//                               Agree()
//                           })
//
//                           }
//                              .padding()
        Spacer()
//                                if showDetails {Agree()}
                           }
                       }
                       }
                       
                            .navigationTitle("Request a Permit")
                            .navigationBarTitleDisplayMode(.inline)
//                       }

}
}

       //
struct information_Previews: PreviewProvider {
    static var previews: some View {
        information()
    .preferredColorScheme(.dark)

    }
}

extension URL: Identifiable {
    public var id: String {
        return self.absoluteString
    }
}
//
//

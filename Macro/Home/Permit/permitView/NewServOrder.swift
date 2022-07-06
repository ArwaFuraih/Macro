//
//  NewServOrder.swift
//  Macro
//
//  Created by sumayah on 07/12/1443 AH.
//

import SwiftUI
//import iPhoneNumberField
import FirebaseAuth

struct NewServOrder: View {
    @Environment(\.presentationMode) var presentationMode

    @StateObject var permitModel = permitviewModel()
//    @EnvironmentObject var permitModel: permitviewModel

    //    @EnvironmentObject var viewModelpremit: custumerOrdr
 
    @State var id: String = ""
    @State var userid: String = ""
    @State var name: String = ""
    @State var nationalid: String = ""
    @State var hight: String = ""
    @State var duration : String = ""
    @State var location: String = ""
    @State var startdateandtime = Date()
    @State var enddateandtime = Date()
    @State var Letter: String = ""
    @State var activitytype: String = ""
    @State var flyingdescription: String = ""
    @State var primttype : String = ""
    @State var pilotnumber : String = ""
    @State var licensenumber : String = ""
    @State var Dronespermit : String = ""
    @State var selectdate1 = Date()
    @State var selectdate2 = Date()
    @State var morehight : String = ""
    @State var moreduration : String = ""
    @State var morepilot : String = ""
    
    @State var shouldPresentNextView : Bool = false

 
 
    @State var filename = ""
    @State var openfile = false

    @State var selected = 1

    var placeholder = ""
    var dropDownListhight = ["100FT", "200FT", "300FT", "400FT", "500FT" , "More with reason "]

    var Servisestime = ""
    var dropDownListDuration = ["Hours", "Day", "Week" , " Month", "More with reason"]

    @State var DateandTime = ""
    
    @State var selectedDate1 = Date()
    @State var selectedDate2 = Date()


   var polit = ""
    var dropDownListpolit = ["One Pilot" , "More Pilots"]

    var PermitType1 = ""
    var dropDownListPermit = ["Urgent", "Not urgent"]

    var Activitytype1 = ""
    var dropDownListActivitytype = ["Photography", "Agriculturet", "Public Safety" , "Construction", "Energy" , "Oil & Gas and Mining"]
    
     var body: some View {
        //        Color.them.myColor1.ignoresSafeArea()
        NavigationView{
            ScrollView(showsIndicators: false){
                ZStack{
                    VStack{
                         Group{
//                             ForEach(permitModel.order)  { index in
                                 VStack(alignment: .leading, spacing: 10) {
                                Text("Full Name")
                                     TextField("",text: $name)
                                      .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 8.0)
                                        .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                    .frame(width: 342.15, height: 66.86)
                            }
                            //                    .padding()

                             VStack(alignment: .leading, spacing: 10){
                                 Text("National ID")
//                                iPhoneNumberField("\(index.)")
                                 TextField("",text:$nationalid)
 //                                TextField("", text: $stringOfTextField2)
                                     .padding()
                                     .overlay(RoundedRectangle(cornerRadius: 8.0)
                                         .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                     .frame(width: 342.15, height: 66.86)
                             }
                             VStack(alignment: .leading, spacing: 10){
                                 Text("Location Details")
                                 TextEditor(text:$location)
 //                                TextField("", text: $stringOfTextField2)
                                     .padding()
                                     .overlay(RoundedRectangle(cornerRadius: 8.0)
                                         .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                     .frame(width: 342.15, height: 66.86)
                             }

 
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
                                    TextField("", text: $morehight)
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
                                            self.duration = client
                                        }
                                    }
                                }
                            label: {
                                VStack(spacing: 5){
                                    HStack{
                                        Text(duration.isEmpty ? Servisestime : duration)
                                            .foregroundColor(duration.isEmpty ? .gray : .white)
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

                            if duration == dropDownListDuration.last! {

                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Type the duration with reason below")
                                    TextField("", text: $moreduration)
                                        .padding()
                                        .overlay(RoundedRectangle(cornerRadius: 8.0)
                                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                        .frame(width: 342.15, height: 66.86)
                                }

                            } else {
                                EmptyView()
                            }

                             VStack(alignment: .leading, spacing: 10) {
                                Text("Start Date and Time")

                                    DatePicker("", selection: $selectedDate1)
   //                                  Text("\(selectedDate)")
//                                    .frame(width: 342.15, height: 66.86)

//                                .datePickerStyle(.graphical)
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 8.0)
                                    .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                .frame(width: 342.15, height: 66.86)
                              }

                            VStack(alignment: .leading, spacing: 10) {
                                Text("End Date and Time")

                                     DatePicker("", selection: $selectedDate2)

 //                                    Text("\(selectedDate)")
//                                    .frame(width: 342.15, height: 66.86)

//                                .datePickerStyle(.graphical)
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 8.0)
                                .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                .frame(width: 342.15, height: 66.86)
                              }

                            .padding()

                            VStack(alignment: .leading, spacing: 10) {
                                Text("license number")
//                                Text("\(index.order.NameOfServece)"
                                 TextField("", text: $licensenumber)
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 8.0)
                                        .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                    .frame(width: 342.15, height: 66.86)
                            }
                            //                         .padding()
                        }
                        Group {

                            VStack(alignment: .leading, spacing: 10) {
                                Text("Drones permit")
//                                Text("\(index.order.NameOfServece)"
                                TextField("", text: $Dronespermit)
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 8.0)
                                        .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                    .frame(width: 342.15, height: 66.86)
                            }
                            //                         .padding()


                            VStack(alignment: .leading, spacing: 10) {
                                Text("Upload the letter, if available")

//                                   Text(filename)
//                                    .fontWeight(.bold)

                                Button(action: { openfile.toggle()},
                              label: {
                                HStack{
                                    Text(Letter)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)

                                      Spacer()
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(Color.white)
                                        .font(Font.system(size: 20, weight: .bold))
                                        .padding()
                                }

                                })
                                    .fileImporter(isPresented: $openfile, allowedContentTypes: [.pdf]) { (res) in
                                        do{
                                            let fileUrl = try res.get()
                                            print(fileUrl)
                                            self.Letter = fileUrl.lastPathComponent
                                        }
                                        catch{
                                            print("error reading docs")
                                            print(error.localizedDescription)
                                        }
                                         }


                            .padding()
                            .frame(width: 342.15, height: 66.86)
                            .overlay(RoundedRectangle(cornerRadius: 8.0)
                                .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))

//                            .sheet(isPresented: $isPickerPresented) {
//                                DocumentPicker(url: $documentUrl)
                        }

                        //
//                            EmptyView()
//                                .sheet(item: $documentUrl) { url in
//                                    PDFComponent(url: url)
//                                 }
                            .padding(.bottom)

                            VStack(alignment: .leading, spacing: 10) {
                                Text("Activity type")
                                Menu {
                                    ForEach(dropDownListActivitytype.sorted(by: <), id: \.self){ client in
                                        Button(client) {
                                            self.activitytype = client
                                        }
                                    }
                                } label: {
                                    VStack(spacing: 5){
                                        HStack{
                                            Text(activitytype.isEmpty ? Activitytype1 : activitytype)
                                                .foregroundColor(activitytype.isEmpty ? .white : .white)
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
                                Text("Flying Description")
                                TextEditor(text: $flyingdescription)
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
                                            self.primttype = client
                                        }
                                    }
                                } label: {
                                    VStack(spacing: 5){
                                        HStack{
                                            Text(primttype.isEmpty ? PermitType1 : primttype)
                                                .foregroundColor(primttype.isEmpty ? .white : .white)
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
                                Text("Pilot Numbers")
                                Menu {
                                    ForEach(dropDownListpolit, id: \.self){ client in
                                        Button(client) {
                                            self.pilotnumber = client
                                        }
                                    }
                                } label: {
                                    VStack(spacing: 5){
                                        HStack{
                                            Text(pilotnumber.isEmpty ? polit : pilotnumber)
                                                .foregroundColor(pilotnumber.isEmpty ? .gray : .white)
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
                            if pilotnumber == dropDownListpolit.last! {

                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Type their Names , ID , License number , Drones permit")
                                    TextEditor(text: $morepilot)
                                        .padding()
                                        .overlay(RoundedRectangle(cornerRadius: 8.0)
                                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                        .frame(width: 342.15, height: 66.86)
                                }

                            } else {
                                EmptyView()
                            }

                        }
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
                            
                            ZStack{
                               
                                
                                Button {
                                    guard let userId = Auth.auth().currentUser?.uid else {
                                        print("user not logged in, and this whole view shouldn't appear")
                                        return
                                    }
                                 permitModel.addpriemt(userid: userId, name: name, nationalid: nationalid, hight: hight, duration: duration, location: location, startdateandtime: selectdate1, enddateandtime: selectdate2, Letter: Letter, activitytype: activitytype, flyingdescription: flyingdescription, primttype: primttype, pilotnumber: pilotnumber, licensenumber: licensenumber, Dronespermit: Dronespermit, morehight: morehight, moreduration: moreduration, morepilot: morepilot)
                                    
                                     shouldPresentNextView.toggle()
                                }
                            
                             label: {
                               Text("Submit")
                                  .foregroundColor(.white)
                                  .bold()
                                  .frame(width: 342, height: 41.31)
                                  .cornerRadius(8)
                                  .background(Color("btnColor"))
                                  .cornerRadius(8)
                           }
                            }
                        }
                       
                        //                            .disabled(stringOfTextField1.isEmpty ||       stringOfTextField2.isEmpty||hight.isEmpty || Duration.isEmpty ||
                        //                                      polit.isEmpty || Permit.isEmpty || Activity.isEmpty)
                        
                          }
                         .padding()
                        }
                NavigationLink(isActive: $shouldPresentNextView, destination: {
                    Detailspermit()
                    
                }, label: EmptyView.init)
             }
             .navigationTitle("Request a Permit")
            .navigationBarTitleDisplayMode(.inline)
        }

    }
}
struct NewServOrder_Previews: PreviewProvider {
    static var previews: some View {
        
        NewServOrder()

//             .environmentObject(permitviewModel())
        
             .preferredColorScheme(.dark)
     }
}

//extension URL: Identifiable {
//    public var id: String {
//        return self.absoluteString
//    }
//}
////
////

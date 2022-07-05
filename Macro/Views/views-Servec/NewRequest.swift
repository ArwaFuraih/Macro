//
//  New Request.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 13/11/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct NewRequest: View {
    
//    @StateObject var ordersViewModel = OrdersViewModel()
//    @State var order = Order(id: UUID().uuidString, customerId: "", providerId: "", isprovider: false, CustomerType: "", city: "", dateAndTime: "", Hours: 0, description: "", Letter: "", pilot: 0, Price: 0.0, timestamp: Timestamp, userType: "", status: .new, NameOfServece: .Photography)

    @State var selection: Status = .new
    @State var nextPage : Bool = false


    


    @StateObject var viewModel = custumerOrdr()

    @State var userID: String = ""
    @State var city: String = ""
    @State var userType: String = ""
    @State var dateandtime = Date()
//    @State var mydateandtime : timestamp
    
    @State var adddescrption: String = ""
    @State var uploadfile: String = ""
    @State var addpilot: String = ""
    @State var lettel: String = ""
    @State var morepilot: String = ""

    @State var filename = ""
    @State var openfile = false
     
     
//    let myTimeStamp = self.datePicker?.date.timeIntervalSince1970

    
//    @State var city1 = ""
//    var citytype1 = ""
//    var dropDownListcitytype1 = ["Riyadh", "Jeddah"]
//
//    var dropDownListcitydetiles12 = ["Riyadh-Aziziyah", "Riyadh-Faisaliyyah", "Riyadh-Malazz" , "Riyadh-Olaya"]
//
//     var dropDownListcitytype22 = ["Jeddah-An-Nahda", "Jeddah-Muhammadiyyah"]
    
    @State var customer =  ""
    var custmortype = ""
    var dropDownListcustmortype = ["Company" , "Individual"]
    
    
    @State var selectedDate1 = Date()

    @State var polit = ""
    var politnumber = ""
    var dropDownListpolit = ["One Pilot" , "More Pilots"]
    
    
   var body: some View {
           ZStack{
            Color.black.ignoresSafeArea()
//             NavigationView{
                
                ScrollView(showsIndicators: false){
                      ZStack{
                         VStack{
                             Group {
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Location Details")
                                     TextField("City,Street and Neighborhood",text: $city)

                                        .padding()
                                        .overlay(RoundedRectangle(cornerRadius: 8.0)
                                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                        .frame(width: 342.15, height: 66.86)
                                }
                                .padding(.bottom)
 
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Customer type")
                                Menu {
                                    ForEach(dropDownListcustmortype, id: \.self){ i in
                                        Button(i) {
                                            self.userType = i
                                        }
                                    }
                                } label: {
                                    VStack(spacing: 5){
                                        HStack{
                                            Text(userType.isEmpty ? custmortype : userType)
                                                .foregroundColor(userType.isEmpty ? .white : .white)
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
                                Text("Start Date and Time")
                                
                                DatePicker("", selection: $dateandtime)
//                                myTimeStamp
//                                DatePicker("", selection: dateFormatter.string(from: dateandtime))

   //                                  Text("\(selectedDate)")
//                                    .frame(width: 342.15, height: 66.86)

//                                .datePickerStyle(.graphical)
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 8.0)
                                    .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                .frame(width: 342.15, height: 66.86)
                              }
                            .padding(.bottom)

                            VStack(alignment: .leading, spacing: 10) {
                                Text("Add Descriotion")
                                TextEditor(text: $adddescrption)
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 8.0)
                                        .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                    .frame(width: 342.15, height: 66.86)
                            }
                            .padding(.bottom)

                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Upload the letter, if available")
     
    //                                   Text(filename)
    //                                    .fontWeight(.bold)
                                    
                                    Button(action: { openfile.toggle()},
                                  label: {
                                    HStack{
                                        Text(lettel)
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
                                                self.lettel = fileUrl.lastPathComponent
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
                            Group{
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Pilot Numbers")
                                Menu {
                                    ForEach(dropDownListpolit, id: \.self){ i in
                                        Button(i) {
                                            self.addpilot = i
                                        }
                                    }
                                } label: {
                                    VStack(spacing: 5){
                                        HStack{
                                            Text(addpilot.isEmpty ? politnumber : addpilot)
                                                .foregroundColor(addpilot.isEmpty ? .gray : .white)
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
                                
                                if addpilot == dropDownListpolit.last! {
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("Type pilot numbers you need")
                                        TextField("", text: $morepilot)
                                            .padding()
                                            .overlay(RoundedRectangle(cornerRadius: 8.0)
                                                .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                            .frame(width: 342.15, height: 66.86)
                                    }
                                    
                                } else {
                                    EmptyView()
                                }
                              }
                   ZStack{
                       
                       Button {
//                           order.customerId = ordersViewModel.user.id
//                           ordersViewModel.addOrder(order: order)

                        
                           nextPage.toggle()
                           guard let userId = Auth.auth().currentUser?.uid else{
                               print("user NotLogin")
                               return
                           }
//                           viewModel.addOrder(order: order)
//                           viewModel.addorder(userID: userId, city: city, userType: userType, timestamp: selectedDate1, adddescrption: adddescrption, lettel: lettel, addpilot: addpilot, morepilot: morepilot)
                           
                       } label: {
                           ZStack{
                              Text("Send")
                                  .foregroundColor(.white)
                                  .bold()
                                  .frame(width: 342, height: 41.31)
                                  .cornerRadius(8)
                                  .background(Color("btnColor"))
                                  .cornerRadius(8)
                           }
                               NavigationLink(isActive: $nextPage,
                                              destination: {
                                   loading()
                               },
                                  

                               label:
                                   EmptyView.init)
                               

                               
                               
                               
                               
                            }
                       }
                       
                       
                       
                       
                    
                    
                    
                    
                }
                  .padding()
                }
                   }
//         }
//    }
                 }
//             }
             }
                 
    .navigationTitle("Request a Permit")
    .navigationBarTitleDisplayMode(.inline)
//}
                         }
             }


struct NewRequest_Previews: PreviewProvider {
    static var previews: some View {
        NewRequest()
 
            .preferredColorScheme(.dark)
     }
}



//  TextField("Covering the Jeddah season using drones  ", text: $stringOfTextField3)



//                                                VStack(alignment: .leading, spacing: 10){
//                    Text("                     Welcome Ahmed")
//                        .fontWeight(.bold)
//                        .font(.system(size: 16))
//                        .frame(maxWidth:.maximum(10,259),alignment:.center)
//
//
//                    Text("City")
//                    TextField("", text: $stringOfTextField1)
//                        .padding()
//                        .overlay(RoundedRectangle(cornerRadius: 8.0).strokeBorder(Color.them.mygray, style: StrokeStyle(lineWidth: 1)))
//                        .frame(width: 342.15, height: 66.86)
//                }
//
//                    .padding(.top,-80)


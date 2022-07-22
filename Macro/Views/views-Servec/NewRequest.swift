//
//  New Request.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 13/11/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct NewRequest: View {
    @State var showOffer = false

    let myorder : OrderForFeed
   @StateObject var viewModel: custumerOrder = custumerOrder()
 //    @State var order = Order(dictionary: T##[String : Any])
    @StateObject var cartManager = CartManager()

     var allServies: Servies
    
    
    
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
    @State var pilot: String = ""
    @State var Hours: String = ""
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
         
             NavigationView{
                 ZStack{
                  Color.black.ignoresSafeArea()
                ScrollView(showsIndicators: false){
                      ZStack{
                         VStack{
                             Group {
                                VStack(alignment: .leading, spacing: 10) {
                                    
                                    Text("Location Details")
                                        .foregroundColor(.gray)
                                     TextField("City,Street and Neighborhood",text: $city)

                                        .padding()
                                        .overlay(RoundedRectangle(cornerRadius: 8.0)
                                            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1)))
                                        .frame(width: 342.15, height: 66.86)
                                }
                                .padding(.bottom)
 
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Customer type")
                                   
                                    .foregroundColor(.gray)
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
                                  
                                    .foregroundColor(.gray)
                                
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
                                 
                            customTextField(placeholder: "", title: "Add Descriotion",  text: $adddescrption)
                    

                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Upload the letter, if available")
                                       
                                        .foregroundColor(.gray)
     
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
                                 
                                    .foregroundColor(.gray)
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
                           guard let userId = Auth.auth().currentUser?.uid else {
                               print("user not logged in, and this whole view shouldn't appear")
                               return
                           }
                           showOffer.toggle()
                           
                           viewModel.newOrderS(userID : userId,city: city, CustomerType: userType, description: adddescrption, Letter: lettel, pilot: pilot, morepilot: morepilot, dateAndTime: dateandtime, nameOfServece: .Photography, cancelled: false, Hours:Hours )
                          
                           
                       } label: {
                           Text("Request")
                               .foregroundColor(.white)
                              .bold()
                              .frame(width: 342, height: 41.31)
                              .cornerRadius(8)
                              .background(Color("btnColor"))
                              .cornerRadius(8)
                       } .fullScreenCover(isPresented: $showOffer, content: {
                           OrdersCustView()
                           
                           
//                           CartView()
//                               .environmentObject(cartManager)
                             })
                        }
                      .onAppear() {
                               cartManager.addToCart(allServies: serviesList[1])
                              }
    
                }
                  .padding()
                }
                   }
//         }
//    }
                 }
             }
             
                 
    .navigationTitle("New Request")
    .navigationBarTitleDisplayMode(.inline)
//}
                         }
             }
}

struct NewRequest_Previews: PreviewProvider {
    static var previews: some View {
        
        NewRequest(myorder: OrderForFeed(order: Order(dictionary: [:]), user: User(dictionary: [:]), orderID: ""), allServies: serviesList[0])
                   
            .environmentObject(CartManager())
 
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


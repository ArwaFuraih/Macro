//
//  ServicesBtnVieew.swift
//  Macro
//
//  Created by sumayah on 07/12/1443 AH.
//

import SwiftUI
import FirebaseAuth


struct ServicesBtnVieew: View {
    @StateObject var cartManager = CartManager()
    @State var allServies: Servies
    
    @EnvironmentObject var viewModel : AuthViewModel
    @State var showingAlert = false
    @State var showSheet: Bool = false
    @State var Argiculturesheet : Bool = false
    @State var  EnergySheet : Bool = false
    @State var  OilSheet : Bool = false
    @State var Photographysheet: Bool = false
    
    
    
    
    var body: some View {
        VStack{
            Text("Request Services").foregroundColor(Color.black).font(.title2)
                .fontWeight(.bold).padding(.trailing,150)
            
            
            
            
            HStack (spacing: 15){
                
                
                //photography button
                
                Button {
                    if Auth.auth().currentUser != nil {
                        Photographysheet.toggle()
                    }else{  showingAlert.toggle ()}
                }
                
            label: {
                ZStack{
                    Image("photogra")
                        .overlay(
                            Rectangle()
                                .size(width: 164, height: 32)
                                .fill(Color.them.serviceColor)
                                .clipShape(RoundedShape(corners: [.topRight]))
                                .position(x: 88, y: 137)
                            
                        )
                    
                    Text("Photography").foregroundColor(Color.white).padding(.top,75)
                }
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("Not Logged In "),
                        message: Text("You have to login to use this service"),
                        primaryButton: .destructive(Text("Login"))
                        {showSheet.toggle()},
                        secondaryButton: .cancel())}
            }
            .fullScreenCover(isPresented: $showSheet, content: { loginView()})
            .fullScreenCover(isPresented: $Photographysheet, content: {Photography()})
                
                //Argiculture button
                
                Button {
                    if Auth.auth().currentUser != nil {
                        Argiculturesheet.toggle()
                    }else{  showingAlert.toggle ()}
                    
                    
                }
                
            label: {
                ZStack{
                    Image("Argi")
                        .resizable()
                        .frame(width: 160, height:115)
                        .overlay(
                            Rectangle()
                                .size(width: 164, height: 33)
                                .fill(Color.them.serviceColor)
                                .clipShape(RoundedShape(corners: [.topLeft]))
                                .position(x: 80, y: 139)
                        )
                    
                    Text("Argiculture").foregroundColor(Color.white).padding(.top,89)
                }
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("Not Logged In "),
                        message: Text("You have to login to use this service"),
                        primaryButton: .destructive(Text("Login"))
                        {showSheet.toggle()},
                        secondaryButton: .cancel())}
            }
            .fullScreenCover(isPresented: $showSheet, content: {loginView()})
            .fullScreenCover(isPresented: $Argiculturesheet, content: {Argiculture()})
            }
            
            
            
            
            HStack(spacing: 20){
                Button {
                    
                    if Auth.auth().currentUser != nil {
                        EnergySheet.toggle()
                    }else{  showingAlert.toggle ()}
                }
                
            label: {
                ZStack{
                    Image("EngineeringService")
                        .resizable()
                        .cornerRadius(8)
                        .frame(width:164 , height:110)
                        .overlay(
                            Rectangle()
                                .size(width: 164, height: 33)
                                .fill(Color.them.serviceColor)
                            
                                .clipShape(RoundedShape(corners: [.topRight]))
                                .position(x: 82, y: 135)
                        )
                    
                    
                    
                    
                    Text("Engineering").foregroundColor(Color.white).padding(.top,85)
                }
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("Not Logged In "),
                        message: Text("You have to login to use this service"),
                        primaryButton: .destructive(Text("Login"))
                        {showSheet.toggle()},
                        secondaryButton: .cancel())}
            }
            .fullScreenCover(isPresented: $showSheet, content: { loginView()})
            .fullScreenCover(isPresented: $EnergySheet, content: {Engineering()})
                
                
                //Oil & Gas Mining btn
                
                
                Button {
                    if Auth.auth().currentUser != nil {
                        OilSheet.toggle()
                    }else{  showingAlert.toggle ()}
                    
                } label: {
                    ZStack{
                        Image("le2")
                            .cornerRadius(8)
                            .frame(width:160 , height:110)
                            .overlay(
                                Rectangle()
                                    .size(width: 170, height: 33)
                                    .fill(Color.them.serviceColor)
                                
                                    .clipShape(RoundedShape(corners: [.topLeft]))
                                    .position(x: 82, y: 135)
                            )
                        
                        
                        Text("Oil & Gas Mining").foregroundColor(Color.white).padding(.top,89) .padding(.leading)
                    } .alert(isPresented:$showingAlert) {
                        Alert(
                            title: Text("Not Logged In "),
                            message: Text("You have to login to use this service"),
                            primaryButton: .destructive(Text("Login"))
                            {showSheet.toggle()},
                            secondaryButton: .cancel())}
                }
                .fullScreenCover(isPresented: $showSheet, content: { loginView()})
                .fullScreenCover(isPresented: $OilSheet, content: {Mining()})
                
                
                
                
                
                
            }.padding(.bottom,10)
            
            
        }
    }
}


struct ServicesBtnVieew_Previews: PreviewProvider {
    static var previews: some View {
        ServicesBtnVieew(allServies: serviesList[0])
    }
}

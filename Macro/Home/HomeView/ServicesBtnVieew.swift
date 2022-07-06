//
//  ServicesBtnVieew.swift
//  Macro
//
//  Created by sumayah on 07/12/1443 AH.
//

import SwiftUI
import FirebaseAuth


struct ServicesBtnVieew: View {
    
    @EnvironmentObject var viewModel : AuthViewModel
    @State var showingAlert = false
    @State var showSheet: Bool = false
    @State var Argiculturesheet : Bool = false
    @State var  EnergySheet : Bool = false
    @State var  OilSheet : Bool = false
    @State var Photographysheet: Bool = false
    
    
    
    
    var body: some View {
        VStack{
            Text("Request  Services").foregroundColor(Color.white).font(.headline)
                .fontWeight(.bold).padding(.trailing,172)
            
            
            
            
            
            HStack{
                //photography button
                
                Button {
                    if Auth.auth().currentUser != nil {
                        Photographysheet.toggle()
                    }else{  showingAlert.toggle ()}
                }
                
            label: {
                ZStack{
                    Image("photogra")
                    Image("mle")
                        .frame(width: 162, height: 109)
                    
                    Text("Photography").foregroundColor(Color.white).padding(.top,84)
                }
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("not logged it"),
                        message: Text("you have to log in to use this service"),
                        primaryButton: .destructive(Text("login"))
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
                        .frame(width: .infinity, height:109)
                    Image("imle")
                        .frame(width: 162, height: 109)
                    Text("Argiculture").foregroundColor(Color.white).padding(.top,84)
                }
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("not logged it"),
                        message: Text("you have to log in to use this service"),
                        primaryButton: .destructive(Text("login"))
                        {showSheet.toggle()},
                        secondaryButton: .cancel())}
            }
            .fullScreenCover(isPresented: $showSheet, content: {loginView()})
            .fullScreenCover(isPresented: $Argiculturesheet, content: {Argiculture()})
            }
            
            
            
            
            HStack{
    //Energy Btn
                Button {
                    
                    if Auth.auth().currentUser != nil {
                        EnergySheet.toggle()
                    }else{  showingAlert.toggle ()}
                }
                
            label: {
                ZStack{
                    Image("energyph")
                        .frame(width: .infinity, height:109)
                    Image("mle")
                        .frame(width: 162, height: 109)
                    Text("Energy").foregroundColor(Color.white).padding(.top,84)
                }
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("not logged it"),
                        message: Text("you have to log in to use this service"),
                        primaryButton: .destructive(Text("login"))
                        {showSheet.toggle()},
                        secondaryButton: .cancel())}
            }
            .fullScreenCover(isPresented: $showSheet, content: { loginView()})
            .fullScreenCover(isPresented: $EnergySheet, content: {Mining()})
                
                
        //Oil & Gas Mining btn
                
                
                Button {
                    if Auth.auth().currentUser != nil {
                        OilSheet.toggle()
                    }else{  showingAlert.toggle ()}
                    
                } label: {
                    ZStack{
                        Image("le2").clipShape(
                            RoundedRectangle(cornerRadius: 8))
                        .frame(width: 162, height:109)
                        Image("imle")
                            .clipShape(
                                RoundedRectangle(cornerRadius: 8))
                            .frame(width: 162, height:109)
                        Text("Oil & Gas Mining").foregroundColor(Color.white).padding(.top,84)
                    } .alert(isPresented:$showingAlert) {
                        Alert(
                            title: Text("not logged it"),
                            message: Text("you have to log in to use this service"),
                            primaryButton: .destructive(Text("login"))
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
        ServicesBtnVieew()
    }
}

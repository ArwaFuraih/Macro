//
//  Agreement.swift
//  Macro
//
//  Created by تهاني حامد عاطي الثقفي  on 10/11/1443 AH.
//


import SwiftUI
struct Agree: View {
    @State private var showDetails = false

    var body: some View {
        
//         NavigationView{
             ScrollView(.vertical){
                 ZStack{
             VStack(alignment: .leading, spacing: 25){
                 VStack(spacing:10){
                         VStack{
                 Text("Terms of Service")
                         
                 .fontWeight(.bold)
                 .font(.system(size: 24))
                 }
                 }
                 
                         Section{
                     Text("1- Terms")
                         .fontWeight(.bold)
                         .font(.system(size: 16))

                         }
 //                        .padding()
                         
                         Section{
                     
                     Text("As a condition of this authorization,Iagree to comply \n with 14 CFR Part 107 operating rules, including .")
         .font(.system(size: 16))
         .font(Font.custom("Georgia", size: 16))
                     }
 //                    .padding()

                     Section{
                 Text("2- Use License")
                     .fontWeight(.bold)
                     .font(.system(size: 16))

                     }
 //                    .padding()

                     Section{

 Text("Maintain visual line of sight.Aircraft speed not to\n exceed 100 mph.Do not fly over non-participants.\nDo not exceed maximum authorized altitude.\nEnsure there are no TFRS before flying.\nThe weather ceiling must be above 1,000  feet AGL\n when flying in Class E airspace.\nOperations within 3nm of a stadium are generally restricted from 1 time: 2 hour before until 1 hour after events .\nbefore until 1 hour after events .\nLAANC does not allow swarm operations. ")
                         .font(.system(size: 16))
                     }
 //                    .padding()

 Text(".To fully comply with the regulations and \ninstructions contained in the Saudi Civil Aviation\n Manual.")
 //                            .padding()

 Text(".Comply with the instructions and rules issued by \nthe permit to our aircraft(s).Exact conformity with \nthe aircraft for the purpose for which the permit was issued.Not to delay the aircraft of others directly or indirectly.")
 //                            .padding()

                     Text(".The complete surface use of the aircraft in the \nservice of others, except in emergency cases only \nand after obtaining approval.\n Aviation Aviation (Management of Flight Permits) General Aviation Authority.")
 //                            .padding()

                     Text(".It is absolutely prohibited to carry out aircraft\n leasing operations, with the exception of entities licensed to operate through Saudi companies only, \nand in accordance with Part (135) of the Aircraft Operating System..")
 //                            .padding()
             
                     VStack{
                 HStack{
                     Section{
                     Image(systemName:"checkmark.square")
                         .offset(x:-9, y: -45)

     Text("I acknowledge and pledge that any violation \nof the above will result in the immediate cancellation of the permit, in addition to \n bearing all penalties and fines stipulated by\n law, (135) of the Saudi aircraft operating system.")
                     }
                 }
                     .padding()
                         VStack{
                     HStack{
                         Section{
                         Image(systemName:"checkmark.square")
                             .offset(x: -9, y: -45)

                              Text("In the event that the permit is not approved\n for you by the responsible authorities for\n any reason, the amount will be returned \nto your account with a quarter of \nthe amount deducted as a service fee.")
                         }
                         }
                     }
                     
                         .padding()

                 ZStack{
                     Button(action:{showDetails.toggle()}){
                     Text("Accept")
                         .foregroundColor(.white)
                         .bold()
                         .frame(width: 313.97, height: 41.31)
                         .cornerRadius(8)
                         .background(Color("btnColor"))
                         .cornerRadius(8)
                     }.sheet(isPresented: $showDetails, content: {
                         Detailspermit()
                     })
//                     .fullScreenCover(isPresented: $showDetails, content: {
//                     DetailsOrder()
//                 })
                 }
             }
                     }
             .padding(.top,-90)
                 
             }
             }
//         }
//         .navigationTitle("Agreement")
//         .navigationBarTitleDisplayMode(.inline)
    }
     

 }
 struct Agree_Previews: PreviewProvider {
     static var previews: some View {
         Agree()
             .preferredColorScheme(.dark)
     }
     }
    

       

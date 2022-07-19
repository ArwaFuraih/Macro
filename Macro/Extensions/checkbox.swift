////
////  checkbox.swift
////  Macro
////
////  Created by najat ali on 22/11/1443 AH.
////
//
//import SwiftUI
//
//struct checkbox: View {
//
////
////    @ObservedObject var viewModelpremit = custumerOrdr()
////    @EnvironmentObject var viewModelpremit: custumerOrdr
////
////
////
//    @State var name: String = ""
//    @State var nationalid: String = ""
//    @State var hight: String = ""
//    @State var duration: String = ""
//    @State var dateandtime = Date()
//    @State var licensenumber: String = ""
//    @State var Dronespermit: String = ""
//    @State var lettel: String = ""
//    @State var Activitytype: String = ""
//    @State var FlyingDescription: String = ""
//    @State var PermitType: String = ""
//    @State var AddPilot: String = ""
//    @State var placeholder = ""
//     
//    @State   var checkbox1: Bool = false
//    @State   var checkbox2: Bool = false
// 
//
//    
//    var body: some View {
//        VStack{
//        }
//        VStack{
//            Toggle(isOn: $checkbox1) {
//                Text("first condtion")
//            }
//            .toggleStyle(CheckBoxToggleStyle(isreversed: true))
//            Toggle(isOn: $checkbox2) {
//                Text("second condtion")
//             }
//            .toggleStyle(CheckBoxToggleStyle(isreversed: true))
//
//        }
//    }
//}
////
//
////struct CheckBoxToggleStyle: ToggleStyle{
////    var isreversed = false
////    @State private var checkbox2: Bool = false
////
////     func makeBody(configuration: Configuration) -> some View {
////        HStack{
////            if !isreversed {
////            configuration.label
////            }
////            Button {
////                configuration.isOn.toggle()
////             }
////        label:{
////            Image(systemName: configuration.isOn ? "checkmark.square": "square")
////               }
////        .padding(5)
////        .font(.body)
////         .foregroundColor(.white)
////             if isreversed{
////                configuration.label
////            }
////        }
////    }
////}
// 
//struct checkbox_Previews: PreviewProvider {
//    static var previews: some View {
//        checkbox()
//             .preferredColorScheme(.dark)
//    }
//}

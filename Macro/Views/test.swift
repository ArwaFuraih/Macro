////
////  test.swift
////  Macro
////
////  Created by sumayah on 18/11/1443 AH.
////
//
//import SwiftUI
//
//struct test: View {
//    @State var showingAlert = false
//    @State var showSheet: Bool = false
//    @State var showSheet2: Bool = false
//
//    @State var userIsLogin = true
//    @ViewBuilder
//
//    var body: some View {
//        
////        NavigationView{
////
////
////        NavigationLink {
////
////
////        } label: {
////
////                 ZStack{
////                     Image("photogra")
////                         .frame(width: .infinity, height:109)
////                     Image("rightm").resizable()
////                         .frame(width: .infinity, height: 117)
////                     Text("Photography").foregroundColor(Color.white).padding(.top,84)
////                 }
////        }
////
////            }
////            .alert(isPresented:$showingAlert) {
////                        Alert(
////                            title: Text("not logged it"),
////                            message: Text("you have to log in to use this service"),
////                            primaryButton: .destructive(Text("login")) {
////                                showSheet.toggle()
////                                print("logging in...")
////                            },
////                            secondaryButton: .cancel()
////                        )}
////            .fullScreenCover(isPresented: $showSheet, content: {
////              Account()})
//        
//        
//        
//     
//                
//        
//        
//        
//        
//        
//        }
//       
//      
//        
//
//        
////    @ViewBuilder func getView(view: String) -> some View {
////        print("yeeeeees clicked")
////    return Settings()
////    }
////
////
//    
//    @ViewBuilder
//             func fetchView() -> some View {
//                 print("ooooho")
//                    return Settings()
//            }
//    }
//
//
//    func checkUser() -> View  {
//        @State var showSheet2: Bool = false
//
//        print("yeeeeees clicked")
//         Button("Show Sheet") {
//            showSheet2.toggle()
//               }
//               .sheet(isPresented: $showSheet2) {
//                   Settings()
//               }
//        return
//
//    }
//
//    }
//
//    
//
//
//struct test_Previews: PreviewProvider {
//    static var previews: some View {
//        test()
//    }
//}

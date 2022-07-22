//
//  splashscreen.swift
//  Macro
//
//  Created by najat ali on 07/12/1443 AH.
//

import SwiftUI

struct splashscreen: View {
    @AppStorage("onboardingView") var onboarding = true

    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)

    @State  var isactive: Bool = false
     @State private var size = 0.8
    @State private var opacity = 0.5
    @State var isAnimating: Bool = false

    var body: some View {
        Rectangle()
        
            .fill(LinearGradient(
              gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
              startPoint: .init(x: 0.5, y: 0),
              endPoint: .init(x: 0.5, y: 0.6)
            )).ignoresSafeArea()
            .edgesIgnoringSafeArea(.all)
                 .padding(.top,-160)
        
        ZStack{
          
            VStack{
            
                if isactive {
                    MyTab()
                 }
                else {
                    ZStack{
                    VStack{
                        VStack{
                             Image("logo2")
                               .resizable()
                               .scaledToFit()
                                .frame(width: 150 , height: 150)
                                .scaleEffect(isAnimating ? 10 : 2)
                               .animation(.easeInOut(duration: 2.5))
                            
                     Text("HOVER")
                    .font(.custom("dotness", size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                     .scaleEffect(isAnimating ? 3 : 1)
                    .animation(.easeInOut(duration: 2.5))
                     
             }
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                        
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1.1)) {
                                self.size = 1.10
                                self.opacity = 100.00
                            }
                    }
        }
                    .onAppear {
        //                isAnimating.toggle()

                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation {
                        self.isactive = true
                    }
                    }
                    } .padding()
        }
            }
            
//                .frame(width: 300, height: 200)
//            Color.them.btnColor
//                .ignoresSafeArea(.vertical)
            
         
        }
      
    }
    }
struct splashscreen_Previews: PreviewProvider {
    static var previews: some View {
        splashscreen()
            .preferredColorScheme(.dark)

    }
}

struct home: View{
     var body: some View{
        VStack(spacing: 25){
            textshimer(text: "HOVER")
            
        }
        .preferredColorScheme(.dark)
    }
}

struct textshimer: View{
    var  text: String
    @State  var animatation  = false
    var body: some View{
        VStack(spacing: 25){
            Text(text)
                .font(.custom("LLDOT", size: 120))
                .fontWeight(.bold)
             HStack(spacing:0){
                ForEach(0..<text.count,id: \.self){
                    index in
                    Text(String(text[text.index(text.startIndex,offsetBy: index)]))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(randomcolor())
            }
        }
            .mask(
                Rectangle()
                
                    .fill(
                        LinearGradient(gradient: .init(colors: [Color.white.opacity(0.5),Color.white.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                        )
                    .rotationEffect(.init(degrees: 70.0))
                    .padding(20)
                    .offset(x: -250)
                    .offset(x: animatation ? 500:0)
    )
            .onAppear {
                withAnimation(Animation.linear(duration: 1.1).repeatForever(autoreverses: false)){
                    
                    animatation.toggle()
                    
                }
            }
                }
}
    func randomcolor()-> Color {
        
        let color = UIColor(red: CGFloat.random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        
        return Color(color)
    }
}

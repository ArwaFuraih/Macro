//
//  loading.swift
//  Macro
//
//  Created by najat ali on 13/11/1443 AH.
//

import SwiftUI
 
struct loading: View {
            
 @State var isAnimating: Bool = false

    var body: some View {
        NavigationLink {
            OrdersProvView()
        } label: {
            Text("dd")
        }

        ZStack{
                    Circle()
                        .fill(Color.them.btnColor.opacity(0.1))
                        .foregroundColor(.white)
                        .frame(width: 150, height: 150)
                        .opacity(isAnimating ? 0 : 1)
                        .scaleEffect(isAnimating ? 3 : 1)
                        .animation(.easeInOut(duration: 2.5)
                            .repeatForever(autoreverses: false).speed(1).delay(0.2), value: isAnimating)
                    
                    Circle()
                        .fill(Color.them.btnColor.opacity(0.3))
                        .foregroundColor(.white)
                        .frame(width: 100, height: 100)
                        .opacity(isAnimating ? 0 : 1)
                        .scaleEffect(isAnimating ? 3 : 1)
                        .animation(.easeInOut(duration: 2.5)
                            .repeatForever(autoreverses: false).speed(1).delay(0.5), value: isAnimating)
                    
                    Circle()
                        .fill(Color.them.btnColor.opacity(0.7))
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .opacity(isAnimating ? 0 : 1)
                        .scaleEffect(isAnimating ? 3 : 1)
                        .animation(.easeInOut(duration: 2.5)
                            .repeatForever(autoreverses: false).speed(1).delay(0.8), value: isAnimating)
                }.onAppear{
                    withAnimation {
                        isAnimating.toggle()
                    }
                }
            }
        }
       


struct loading_Previews: PreviewProvider {
    static var previews: some View {
        loading()
            .preferredColorScheme(.dark)

    }
}

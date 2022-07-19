//
//  OnBoardingStepView.swift
//  Drone
//
//  Created by Irfan-IOS on 13/07/2022.
//

import SwiftUI

struct OnBoardingStepView: View {
    var step:OnboardingDataModel
    @State private var show = false
    
    var body: some View {
        ZStack {
         
            
            VStack{
                Image(step.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: show ? 300:100, height: show ? 200:100, alignment: .center)
                    .frame(maxWidth:.infinity)
                    .padding(.bottom, 20)
                    .animation(Animation.interpolatingSpring(stiffness: 15, damping: 7).delay(0.1), value: self.show)
                    .animation(Animation.easeOut(duration: 0.3).delay(0.1), value: show)
                Text(step.heading)
                    .foregroundColor(.white)
                    .font(.system(size: 36)).bold()
                    .multilineTextAlignment(.center)

                    .padding([.leading,.trailing],20)
                    .padding(.bottom, 10)
                    .fixedSize(horizontal: false, vertical: true)
                    .animation(Animation.interpolatingSpring(stiffness: 6, damping: 2).delay(0.1), value: self.show)
                    
                
                
                Text(step.text)
                    .foregroundColor(.white)
                    .font(.title3)
                    .font(.system(size: 24))
                    .multilineTextAlignment(.center)
                    .lineLimit(5)
                    .padding(.horizontal, 20)
                    .padding([.leading,.trailing],20)
                    .fixedSize(horizontal: false, vertical: true)
                    .animation(Animation.interpolatingSpring(stiffness: 7, damping: 2).delay(0.1), value: self.show)
                
                
                
            }.padding(.bottom,100)
        }.onAppear(){
            show = true
        }
        .onDisappear(){
            show = false
        }
        
        
    }
}

struct OnBoardingStepView_Previews: PreviewProvider {
    static var data = OnboardingDataModel.steps[0]
    static var previews: some View {
        OnBoardingStepView(step: data)
    }
}

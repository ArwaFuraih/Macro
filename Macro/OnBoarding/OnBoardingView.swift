//
//  OnBoardingView.swift
//  Drone
//
//  Created by Irfan-IOS on 13/07/2022.
//

import SwiftUI

struct OnBoardingView: View {
    @State private var onboardinDone = false
    @State var currentIndex: Int = 0
    private var rootViews = RootViews.shared
    private var steps = OnboardingDataModel.steps
    var body: some View {
        ZStack {
            Image("background_Image")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        
            ZStack(alignment: .center) {
                TabView(selection: $currentIndex) {
                    ForEach(self.steps) { object in
                        OnBoardingStepView(step: object)
                            .tag(object.id)
                           
                            
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            }
            
            VStack(alignment:.center) {
                Spacer()
                HStack {
                    
                    Spacer()
                    Button(action: nextButtonAction) {
                        VStack {
                            if self.currentIndex == self.steps.count - 1 {
                                doneButtonStyle
                            }
                            else {
                               // nextButtonStyle
                               
                                
                            }
                        }
                    }
                }
                //.background(Color.blue)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                
            }
            .padding(20)
        }
        
        
    }
    
    fileprivate func nextButtonAction() {
        if self.currentIndex == self.steps.count - 1 {
            doneTapped()
            return
        }
        
        if self.currentIndex < self.steps.count - 1 {
            withAnimation {
                self.currentIndex  += 1
                
            }
        }
    }
    
    var nextButtonStyle: some View {
        
        
        Image(systemName: "arrow.right.circle.fill")
            .resizable()
        
            //.foregroundColor(Color.app.backgroundRed)
            .scaledToFit()
            .frame(width: 50)
        
        
    }
    private func doneTapped() {
        self.onboardinDone = true
        print("done onboarding")
        rootViews.root = .mainTab

    }
    var doneButtonStyle: some View {
        HStack {
            Text("Get Started")
                .font(.system(size: 18))
            
                .foregroundColor(Color.white)
               // .transition(.scale)
            
        }
        .frame(width: 128, height: 50)
        
        .background(Color.them.btnColor)
        .cornerRadius(8)
        .padding()
      
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}

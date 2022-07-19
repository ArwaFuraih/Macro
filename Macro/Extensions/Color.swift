//
//  Color.swift
//  test
//
//  Created by sumayah on 03/11/1443 AH.
//

import Foundation
import SwiftUI


struct Them{
    let white =   Color("white")
    let myColor2 = Color("myColor2")
    let myColor1 = Color("myColor1")
    let btnColor = Color("btnColor")
    let mygray =   Color("mygray")
    let serviceColor = Color("ServiceColor")

    

}

extension Color{
    static let them = Them()
    
}

extension View {
    
    func NAVColor(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    func TabBarCustom(){
        UITabBar.appearance().backgroundColor = UIColor(Color.them.myColor1)
    }
   

}





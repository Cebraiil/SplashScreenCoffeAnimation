//
//  ButtonUI.swift
//  SplashScreenCoffe
//
//  by Swiftui.app on 18.01.2023.
//

import SwiftUI

struct ButtonUI: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.clear)
                .frame(width: 50, height: 50)
                .overlay {
                    Circle().stroke(.white, lineWidth: 2)
                }
            
            Image(systemName: "chevron.right")
                .resizable()
                .frame(width: 15, height: 25)
                .foregroundColor(.white)
                .offset(x: 3, y: 0)
            
        }.offset(x: 120, y: -30)
    }
}

//
//  SplashScreenView.swift
//  SplashScreenCoffe
//
//  by Swiftui.app on 18.01.2023.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            CoffeView(filename: "coffeesplash")
                .offset(x: 0, y: -50)
        }
    }
}

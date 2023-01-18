//
//  MainView.swift
//  SplashScreenCoffe
//
//  by Swiftui.app on 18.01.2023.
//

import SwiftUI

struct MainView: View {
    
    @State var changeOffset  = false
    @State var changeOpacity  = false
    
    var body: some View {
        ZStack {
            
            Color.white.edgesIgnoringSafeArea(.all)
            LoginPart()
            
            ZStack {
                
                Text("Swiftui App")
                    .font(.system(size: 50))
                    .fontWeight(.light)
                    .foregroundColor(Color("coffee"))
                    .multilineTextAlignment(.leading)
                    .frame(width: 350, height: 200)
                    .offset(x: 0, y: -100)
                
                Rectangle()
                 .foregroundColor(.white)
                 .frame(width: 350, height: 200)
                 .opacity(changeOpacity ? 0 : 1)
                 .offset(x: 0, y: -100)
                 .animation(Animation.easeInOut(duration: 3))
                 .onAppear() {
                    self.changeOpacity.toggle()
                 }
            }
            Image("coffeepic")
                .resizable()
                .frame(width: 294, height: 294)
                .offset(x: 12.5, y: changeOffset ? -240 : 7)
                .animation(Animation.easeInOut(duration: 1))
                .onAppear() {
                    self.changeOffset.toggle()
                }
        }
    }
}


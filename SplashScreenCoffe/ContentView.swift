//
//  ContentView.swift
//  SplashScreenCoffe
//
//  by Swiftui.app on 18.01.2023.
// 

import SwiftUI

struct ContentView: View {
    @State var splashScreen  = true
    var body: some View {
        ZStack{
            Group{
              if splashScreen {
                  SplashScreen()
               }
              else{
                  MainView()
              }
            }
           .onAppear {
              DispatchQueue
                   .main
                   .asyncAfter(deadline:
                    .now() + 3) {
               self.splashScreen = false
              }
           }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

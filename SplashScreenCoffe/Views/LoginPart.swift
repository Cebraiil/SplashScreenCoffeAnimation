//
//  LoginPart.swift
//  SplashScreenCoffe
//
//  by Swiftui.app on 18.01.2023.
//
import SwiftUI

struct LoginPart: View {
    @State var changeOffset  = false
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("coffee"))
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(Color.white.opacity(1))
                .offset(x: 0, y: -800)

            ZStack {
                
                Text("Find The Best Design for You.")
                    .font(.system(size: 35))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .frame(width: 350, height: 200)
                    .offset(x: -5, y: -290)

                
                Text("You can have very stylish designs that you can add to your projects.")
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white.opacity(0.8))
                    .multilineTextAlignment(.leading)
                    .frame(width: 350, height: 200)
                    .offset(x: 0, y: -170)
                
            }.padding()
            
            ButtonUI()
           
        } .offset(x: 0, y: changeOffset ?  400 : 700)
            .animation(Animation.easeInOut(duration: 1))
                        .onAppear() {
                            self.changeOffset.toggle()
                        }
    }
}

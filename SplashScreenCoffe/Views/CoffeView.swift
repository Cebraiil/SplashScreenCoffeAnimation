//
//  CoffeView.swift
//  SplashScreenCoffe
//
//  by Swiftui.app on 18.01.2023.
//

import SwiftUI
import Lottie

struct CoffeView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    var filename : String
    
    func makeUIView(context:
        UIViewRepresentableContext<CoffeView>)-> UIView {
             let view = UIView(frame: .zero)
             let animationView = AnimationView()
             let animation = Animation.named (filename)
             animationView.animation = animation
             animationView.contentMode =  .scaleAspectFit
             animationView.play()
             animationView.play(fromProgress: 0, //Start
                                toProgress: 1, //End
                                loopMode: LottieLoopMode.repeat(10),//Number of Times
                                completion: { (finished) in
                                 if finished {
                                     print("Animation Complete")
                                   } else {
                                  print("Animation cancelled")
                                  }
                               })
            animationView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(animationView)
            
            NSLayoutConstraint.activate([animationView.widthAnchor.constraint(equalTo:view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo:view.heightAnchor)])
           
            return view
          }
    
        func updateUIView( _ uiView: UIView, context:
            UIViewRepresentableContext<CoffeView>){
                }
          }





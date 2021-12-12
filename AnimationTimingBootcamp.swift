//
//  AnimationTimingBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 12.12.2021.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating : Bool = false
    var timer : Double = 5.0
    var body: some View {
        VStack {
            Button {
                isAnimating.toggle()
            } label: {
                Text("Start animating: ") + Text("\(isAnimating.description)").bold()
        }
            Group {
                ZStack {
                    Rectangle()
                        .foregroundColor(.mint)
                        .frame(width: isAnimating ? 100 : 20, height: 50)
                        .cornerRadius(10)
                    Text("easeOut")
                        .foregroundColor(.white)
                        .opacity(isAnimating ? 1 : 0)
                }.animation(.easeOut, value: isAnimating)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.teal)
                        .frame(width: isAnimating ? 100 : 20, height: 50)
                        .cornerRadius(10)
                    Text("easeInOut")
                        .foregroundColor(.white)
                        .opacity(isAnimating ? 1 : 0)
                }.animation(.easeInOut, value: isAnimating)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width: isAnimating ? 100 : 20, height: 50)
                        .cornerRadius(10)
                    Text("linear")
                        .foregroundColor(.white)
                        .opacity(isAnimating ? 1 : 0)
                }.animation(.linear, value: isAnimating)
               
                ZStack {
                    Rectangle()
                        .foregroundColor(.indigo)
                        .frame(width: isAnimating ? 100 : 20, height: 50)
                        .cornerRadius(10)
                    Text("easeIn")
                        .foregroundColor(.white)
                        .opacity(isAnimating ? 1 : 0)
                }.animation(.easeIn, value: isAnimating)
           }
            
            Text("Timer")
            ZStack {
                Rectangle()
                    .frame(width: isAnimating ? 250 : 20, height: 50)
                    .foregroundColor(.red)
                    .cornerRadius(5)
                Text("Merhaba").opacity(isAnimating ? 1 : 0)
                    .foregroundColor(.white)
                    
            }.animation(.spring(
                response: 1,
                dampingFraction: 0.6,
            blendDuration: 1), value: isAnimating)
            
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}

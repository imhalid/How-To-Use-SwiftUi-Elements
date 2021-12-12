//
//  AnimationBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 11.12.2021.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimation : Bool = false
    var body: some View {
        VStack {
            Button {
                withAnimation {
                    isAnimation.toggle()
                    
                }
            } label: {
                Text("Start Animation")
        }
            Rectangle()
                
                .fill(isAnimation ? Color.green : Color.pink)
                .frame(width: isAnimation ? 50 : 100, height: isAnimation ? 50 : 100)
                .cornerRadius(isAnimation ? 10 : 50)
                .offset(
                    y: isAnimation ? 250 : 50)
                .rotationEffect(.radians(isAnimation ? 6 : 8))
                .animation(.interpolatingSpring(mass: 2, stiffness: 3, damping: 7, initialVelocity: 2), value: isAnimation)

            Spacer()
        }

    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
